module Codewars.Kata.AttributeSpec where

import Codewars.Kata.Attribute (linuxType)
import Codewars.Kata.Attribute.Preload
import Control.Monad (forM, forM_)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = describe "linuxType" $ do
  let types = [File, Directory, Symlink, Character, Block, Door, Socket, Pipe]
  let short = "-dlcbDsp"
  -- let's check all combinations
  forM_ (zip short types) $ \(c, f) ->
    it ("returns " ++ show f ++ " for files starting with " ++ ['"', c, '"']) $
      -- create a complete permission string
      forAll (randomPerm c) $ \ls ->
        linuxType ls `shouldBe` f

-- | Creates a random permission, starting with the given
--   character
randomPerm :: Char -> Gen String
randomPerm c = fmap (c :) $
  forM "rwxrwxrwx" $ \x -> do
    b <- arbitrary
    return $ if b then x else '-'

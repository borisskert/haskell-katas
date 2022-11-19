module Codewars.Kata.UniqueSpec where

import Codewars.Kata.Unique (findUnique)
--import Codewars.Kata.Unique.List (Unique (..))
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "findUnique" $ do
    it "example" $ do
      findUnique [1, 8, 4, 4, 6, 1, 8] `shouldBe` 6

--  describe "findUnique" $ do
--    prop "works for singleton lists" $ \x ->
--      findUnique [x] `shouldBe` x
--
--    prop "works for lists with three elements" $ \x y ->
--      x /= y ==> do
--        findUnique [x, y, y] `shouldBe` x
--        findUnique [y, x, y] `shouldBe` x
--        findUnique [y, y, x] `shouldBe` x
--
--    -- Remark: Unique's Arbitrary instance makes sure that there
--    -- is exactly one unique element. All other elements will
--    -- occur exactly twice.
--    prop "works for lists with arbitrary elements" $ \(Unique x xs) ->
--      findUnique xs `shouldBe` x

-- Fun fact: the hidden tests are the same.

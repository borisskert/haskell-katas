module Codewars.Kata.FirstCharacterSpec where

import Codewars.Kata.FirstCharacter (firstDup)
import Test.Hspec

spec :: Spec
spec = do
  describe "firstDub" $ do
    it "should work for some simple tests" $ do
      firstDup "tweet" `shouldBe` Just 't'
      firstDup (cycle [1, 2, 3]) `shouldBe` Just 1
      firstDup (repeat ()) `shouldBe` Just ()
      firstDup [] `shouldBe` (Nothing :: Maybe Integer)
      firstDup [1 .. 10] `shouldBe` Nothing
      firstDup [2, 46, 3, 1, 1, 2] `shouldBe` Just 2
      firstDup [Just 'a', Just 'b', Just 'c', Nothing, Just 'A', Just 'A', Nothing] `shouldBe` Just Nothing
      firstDup [1, 2, -6, 0, 0, 0, 0, 0, -6] `shouldBe` Just (-6)
      firstDup [93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93] `shouldBe` Just 93

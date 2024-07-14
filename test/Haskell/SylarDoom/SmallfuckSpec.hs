module Haskell.SylarDoom.SmallfuckSpec where

import Data.Char
import qualified Data.Map.Strict as M
import qualified Data.Vector as V
import Haskell.SylarDoom.Smallfuck
import Test.Hspec

spec :: Spec
spec = do
  describe "Your SmallFuck" $ do
    it "should work for some example test cases" $ do
      -- Flips the leftmost cell of the tape
      interpreter "*" "00101100" `shouldBe` "10101100"
      -- Flips the second and third cell of the tape
      interpreter ">*>*" "00101100" `shouldBe` "01001100"
      -- Flips all the bits in the tape
      interpreter "*>*>*>*>*>*>*>*" "00101100" `shouldBe` "11010011"
      -- Flips all the bits that are initialized to 0
      interpreter "*>*>>*>>>*>*" "00101100" `shouldBe` "11111111"
      -- Goes somewhere to the right of the tape and then flips all bits that
      -- are initialized to 1, progressing leftwards through the tape
      interpreter ">>>>>*<*<<*" "00101100" `shouldBe` "00000000"

    it "should ignore all non-command characters" $ do
      interpreter "iwmlis *!BOSS 333 ^v$#@" "00101100" `shouldBe` "10101100"
    it "should return the final state of the tape immediately if the pointer ever goes out of bounds" $ do
      interpreter "*>>>*>*>>*>>>>>>>*>*>*>*>>>**>>**" "0000000000000000" `shouldBe` "1001101000000111"
      interpreter "<<<*>*>*>*>*>>>*>>>>>*>*" "0000000000000000" `shouldBe` "0000000000000000"
      interpreter ">>*>*>*<<*<*<<*>*" "1101" `shouldBe` "1110"

    it "should work for some simple and nested loops" $ do
      interpreter
        "*[>*]"
        "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
        `shouldBe` "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      interpreter "[[]*>*>*>]" "000" `shouldBe` "000"

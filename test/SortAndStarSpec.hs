module SortAndStarSpec where

import Codewars.Kata.Sort (twoSort)
import Data.Char (isUpper)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "twoSort" $ do
    it "works for a single word list" $
      twoSort ["Hello"] `shouldBe` "H***e***l***l***o"

    it "works for some examples" $ do
      twoSort (words "i want to travel the world writing code one day") `shouldBe` "c***o***d***e"
      twoSort (words "Let's all go on holidy somewhere very cold") `shouldBe` "L***e***t***'***s"

    it "returns a word with the correct format" $
      property $
        forAll (listOf1 $ listOf1 $ choose ('a', 'z')) $ \xs ->
          let checker [_] = True
              checker (_ : '*' : '*' : '*' : xs) = checker xs
              checker _ = False
           in twoSort xs `shouldSatisfy` checker

    it "returns the uppercase word if there is only one" $
      property $
        forAll (listOf1 $ listOf1 $ choose ('a', 'z')) $ \xs ->
          forAll (listOf1 $ choose ('A', 'Z')) $ \x ->
            forAll (shuffle (x : xs)) $ \ys ->
              twoSort ys `shouldSatisfy` (isUpper . head)

    it "works with failing test" $ do
      twoSort ["-x@P5s41(nYDP", "tq2G_5z'7H~o,({N$<", "/+]W", "`", "OEIYw5e;.mJLP{%)", "-odIw/2m^hM3XP", "gtf", "I#Ke|_Rh#[s}`_khd", "zvW`v\")\"-6e`kd*", "TizF^TTIw&v\"_IX"]
        `shouldBe` "-***o***d***I***w***/***2***m***^***h***M***3***X***P"

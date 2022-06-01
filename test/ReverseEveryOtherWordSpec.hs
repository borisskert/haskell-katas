module ReverseEveryOtherWordSpec (spec) where

import Test.Hspec
import ReverseEveryOtherWord (reverseEveryOther)

spec :: Spec
spec = do
  it "Example tests" $ do
    reverseEveryOther "Reverse this string, please!" `shouldBe` "Reverse siht string, !esaelp"
    reverseEveryOther "I really don't like reversing strings!" `shouldBe` "I yllaer don't ekil reversing !sgnirts"

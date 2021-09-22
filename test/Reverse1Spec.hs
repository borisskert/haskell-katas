module Reverse1Spec where
import Reverse1 (reverseWords)
import Test.Hspec

spec :: Spec
spec = do
  describe "reverseWords" $ do
    it "should reverse \"An example!\" to \"nA !elpmaxe\"" $ do
      reverseWords "An example!" `shouldBe` "nA !elpmaxe"
    it "should preserve multiple spaces" $ do
      reverseWords "double  spaces" `shouldBe` "elbuod  secaps"

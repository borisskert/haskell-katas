module Codewars.Kata.RetsecSpec where
import Codewars.Kata.Retsec (reverseByCenter)
import Test.Hspec

spec :: Spec
spec = do
  describe "reverseByCenter" $ do
    it "should work for some examples" $ do
      reverseByCenter ""       `shouldBe` ""
      reverseByCenter "a"      `shouldBe` "a"
      reverseByCenter "ab"     `shouldBe` "ba"
      reverseByCenter "abc"    `shouldBe` "cba"      
      reverseByCenter "agent"  `shouldBe` "nteag"
      reverseByCenter "secret" `shouldBe` "retsec"

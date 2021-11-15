module KataSpec where
import Test.Hspec
import Kata (reverseSlice)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
        reverseSlice "123"   `shouldBe` ["321", "21", "1"]
        reverseSlice "abcde" `shouldBe` ["edcba", "dcba", "cba", "ba", "a"]

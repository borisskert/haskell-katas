module SingleCharPalins1Spec where
import SingleCharPalins1
import Test.Hspec

spec :: Spec
spec = do
  describe "Single Character Palindromes II" $ do
    it "Basic tests" $ do
      solve "abba" `shouldBe` False
      solve "abbx" `shouldBe` True
      solve "abbaa" `shouldBe` True
      solve "aa" `shouldBe` False
      solve "ab" `shouldBe` True
      solve "abcba" `shouldBe` True

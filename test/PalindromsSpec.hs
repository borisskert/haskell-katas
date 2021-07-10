module PalindromsSpec where
import Palindroms
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The isPalindrom function" $ do
    it "should work for some examples" $ do
      isPalindrom "a" `shouldBe` True
      isPalindrom "aba" `shouldBe` True
      isPalindrom "Abba" `shouldBe` True
      isPalindrom "hello" `shouldBe` False

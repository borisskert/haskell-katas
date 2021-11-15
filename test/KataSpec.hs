module KataSpec where
import Kata (pigLatin)
import Test.Hspec
import Test.QuickCheck


spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      pigLatin "hello" `shouldBe` "ellohay"
      pigLatin "hi"    `shouldBe` "hi"

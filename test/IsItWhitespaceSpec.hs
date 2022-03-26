module IsItWhitespaceSpec where
import IsItWhitespace
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The isItWhitespace function" $ do
    it "should work for some examples" $ do
      isItWhitespace ' ' `shouldBe` True
      isItWhitespace 'a' `shouldBe` False

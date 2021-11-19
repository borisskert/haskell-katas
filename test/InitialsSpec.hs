module InitialsSpec where
import Initials
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "The toInitials function" $ do
    it "should work for some examples" $ do
      toInitials "Kerry King" `shouldBe` "K. K."
      toInitials "Tom Araya" `shouldBe` "T. A."

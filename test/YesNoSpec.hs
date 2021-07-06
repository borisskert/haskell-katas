module YesNoSpec where
import YesNo (boolToWord)
import Test.Hspec

spec :: Spec
spec = do
  describe "boolToWord" $ do
    it "should work" $ do
      boolToWord True  `shouldBe` "Yes"
      boolToWord False `shouldBe` "No"

module LightsabersSpec where
import Lightsabers
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing..." $ do
    it "Should return 0 for an empty string" $ do
      howManyLightsabersDoYouOwn "" `shouldBe` 0
    it "Should return 0 for other people" $ do
      howManyLightsabersDoYouOwn "Adam" `shouldBe` 0
    it "Should return 18 for Zach" $ do
      howManyLightsabersDoYouOwn "Zach" `shouldBe` 18
    it "Should return 0 when Zach is lowercased" $ do
      howManyLightsabersDoYouOwn "zach" `shouldBe` 0

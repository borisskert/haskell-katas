module BodyMassIndexSpec (spec, main) where
import BodyMassIndex
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "The bmi function" $ do
    it "should work for some examples" $ do
      bmi 50 1.80 `shouldBe` "Underweight"
      bmi 80 1.80 `shouldBe` "Normal"
      bmi 90 1.80 `shouldBe` "Overweight"
      bmi 110 1.80 `shouldBe` "Obese"

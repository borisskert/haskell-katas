module AngleSpec where
import Angle (angle)
import Test.Hspec

spec :: Spec
spec = do
    it "Basic tests" $ do
      angle 0    `shouldBe` -360
      angle 1    `shouldBe` -180
      angle 2    `shouldBe` 0
      angle 3    `shouldBe` 180
      angle 4    `shouldBe` 360
      angle 5    `shouldBe` 540
      angle 6    `shouldBe` 720
      angle (-1) `shouldBe` -540
      angle (-2) `shouldBe` -720
      angle (-3) `shouldBe` -900

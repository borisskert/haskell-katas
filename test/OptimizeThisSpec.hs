module OptimizeThisSpec where
import Test.Hspec
import OptimizeThis

spec :: Spec
spec = do
  describe "Tests" $ do
    it "Example tests" $ do
      digitSum 0 `shouldBe` 0
      digitSum 12345 `shouldBe` 15
      digitSum 999 `shouldBe` 27
      digitSum 4294967295 `shouldBe` 57
      digitSum (2^200) `shouldBe` 256

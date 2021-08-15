module SumOfCubesSpec where
import SumOfCubes
import Test.Hspec

spec = do
   describe "Sum Cubes" $ do
    it "Basic tests" $ do
      sumCubes 1 `shouldBe` 1
      sumCubes 2 `shouldBe` 9
      sumCubes 3 `shouldBe` 36
      sumCubes 4 `shouldBe` 100
      sumCubes 10 `shouldBe` 3025
      sumCubes 123 `shouldBe` 58155876

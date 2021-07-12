module KataSpec where
import Kata
import Test.Hspec

spec = do
   describe "Sum of Multiples" $ do
    it "should work for simple examples" $ do
      sumMul 0 0`shouldBe` Nothing
      sumMul 2 9 `shouldBe` Just 20
      sumMul 4 (-7) `shouldBe` Nothing
      sumMul 4 123 `shouldBe` Just 1860
      sumMul 123 4567 `shouldBe` Just 86469

module OddNotPrimeSpec where
import OddNotPrime
import Test.Hspec

spec :: Spec
spec = do
  describe "Odd Not Prime" $ do
    it "Basic tests" $ do
      oddNotPrime 5 `shouldBe` 1
      oddNotPrime 10 `shouldBe` 2
      oddNotPrime 99 `shouldBe` 26

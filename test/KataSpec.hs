module KataSpec where
import Test.Hspec
import Kata (getVolumeOfCuboid)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      getVolumeOfCuboid 1 2 2   `shouldBe` 4
      getVolumeOfCuboid 6.3 2 5 `shouldBe` 63

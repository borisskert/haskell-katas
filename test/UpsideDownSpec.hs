module UpsideDownSpec where
import UpsideDown
import Test.Hspec

spec :: Spec
spec = do
  describe "Upside down numbers" $ do
    it "Basic tests" $ do
      solve 0 10 `shouldBe` 3
      solve 10 100 `shouldBe` 4
      solve 100 1000 `shouldBe` 12
      solve 1000 10000 `shouldBe` 20
      solve 10000 15000 `shouldBe` 6
      solve 15000 20000 `shouldBe` 9
      solve 60000 70000 `shouldBe` 15
      solve 60000 130000 `shouldBe` 55 

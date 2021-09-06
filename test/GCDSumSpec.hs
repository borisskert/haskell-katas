module GCDSumSpec where
import GCDSum
import Test.Hspec

spec = do
  describe "GCD Sum" $ do
    it "Basic tests" $ do
      solve 6 3 `shouldBe` Just (3,3)
      solve 8 2 `shouldBe` Just (2,6)
      solve 10 3 `shouldBe` Nothing
      solve 12 4 `shouldBe` Just (4,8)
      solve 12 5 `shouldBe` Nothing

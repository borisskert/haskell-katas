module PriceOfMangoSpec where
import PriceOfMango
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $ do
    it "Should work for some example tests" $ do
       mango 3 3   `shouldBe` 6
       mango 9 5   `shouldBe` 30
       mango 2 3   `shouldBe` 6 
       mango 7 3   `shouldBe` 15
       mango 31 11 `shouldBe` 231
       mango 14 2  `shouldBe` 20

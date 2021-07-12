module AnimalsSpec where

import Animals

import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "test for animals" $ do
    it "Valid Test Cases should return (Chickens, Cows)" $ do
      animals 2 6 `shouldBe` Just (1,1)
      animals 72 200 `shouldBe` Just (44,28)
    it  "Test a few edge cases for great good" $ do
      animals 0 0 `shouldBe` Just (0, 0)
      animals (-1) (-1) `shouldBe` Nothing

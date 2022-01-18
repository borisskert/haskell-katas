module PreviousMultipleSpec (spec) where

import PreviousMultiple
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    prevMultOfThree 1 `shouldBe` Nothing
    prevMultOfThree 25 `shouldBe` Nothing
    prevMultOfThree 36 `shouldBe` Just 36
    prevMultOfThree 1244 `shouldBe` Just 12
    prevMultOfThree 952406 `shouldBe` Just 9

  it "inits" $ do
    inits [3, 6] `shouldBe` [[3, 6], [3]]

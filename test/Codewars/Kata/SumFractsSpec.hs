module Codewars.Kata.SumFractsSpec where
import Codewars.Kata.SumFracts
import Test.Hspec
import Test.HUnit

spec :: Spec
spec = do
    describe "sumFracts" $ do
        it "Sum of fractions with small numbers" $ do
            sumFracts [(1, 2), (1, 3), (1, 4)] `shouldBe` Just "13 12"
            sumFracts [(1, 3), (5, 3)] `shouldBe` Just "2"

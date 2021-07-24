module Codewars.Kata.EvaporatorSpec where
import Codewars.Kata.Evaporator
import Test.Hspec
import Test.HUnit

spec :: Spec
spec = do
    describe "Evaporator" $ do
        it "1st series" $ do
            evaporator 10 10 10 `shouldBe` 22
            evaporator 10 10 5 `shouldBe` 29

module CycleSpec where

import Cycle
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "gets the next value to the left" $ do
    cycleList L [1, 2, 3] 2 `shouldBe` Just 1

  it "returns Nothing if value is not in the list" $ do
    cycleList L [1, 2, 3] 4 `shouldBe` Nothing

  it "loops around" $ do
    cycleList L [1, 2, 3] 1 `shouldBe` Just 3

  it "failing test 1" $ do
    cycleList L [3] 3 `shouldBe` Just 3

  it "right - gets the next value relative to value given" $ do
    cycleList R [1, 2, 3] 1 `shouldBe` Just 2

  it "right - loops around" $ do
    cycleList R [1, 2, 3] 3 `shouldBe` Just 1

  it "works with strings" $ do
    cycleList R "hello" 'e' `shouldBe` Just 'l'

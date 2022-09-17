module ShortestStepsSpec (spec) where

import ShortestSteps (steps)
import Test.Hspec

spec :: Spec
spec = do
  it "Simple Tests" $ do
    steps 1 `shouldBe` 0
    steps 2 `shouldBe` 1
    steps 3 `shouldBe` 2
    steps 4 `shouldBe` 2
    steps 5 `shouldBe` 3
    steps 6 `shouldBe` 3
    steps 7 `shouldBe` 4
    steps 8 `shouldBe` 3
    steps 9 `shouldBe` 4
    steps 12 `shouldBe` 4
    steps 16 `shouldBe` 4
    steps 71 `shouldBe` 9
    steps 72 `shouldBe` 7
    steps 494 `shouldBe` 14
    steps 5667 `shouldBe` 17
    steps 8614 `shouldBe` 18
    steps 10000 `shouldBe` 17

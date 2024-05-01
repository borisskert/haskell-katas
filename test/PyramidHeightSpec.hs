module PyramidHeightSpec (spec) where

import Test.Hspec
import Test.QuickCheck
import PyramidHeight (pyramidHeight)

spec :: Spec
spec = do
  it "Basic tests" $ do
    pyramidHeight 1  `shouldBe` 1
    pyramidHeight 4  `shouldBe` 1
    pyramidHeight 5  `shouldBe` 2
    pyramidHeight 29  `shouldBe` 3
    pyramidHeight 30  `shouldBe` 4
    pyramidHeight 31  `shouldBe` 4
    pyramidHeight 1239  `shouldBe` 14
    pyramidHeight 1240  `shouldBe` 15
    pyramidHeight 1241  `shouldBe` 15
    pyramidHeight 1495  `shouldBe` 15
    pyramidHeight 1496  `shouldBe` 16
    pyramidHeight 2838  `shouldBe` 19
    pyramidHeight 4324  `shouldBe` 23
    pyramidHeight 4349  `shouldBe` 23
    pyramidHeight 4517  `shouldBe` 23
    pyramidHeight 6169  `shouldBe` 25
    pyramidHeight 9129  `shouldBe` 29

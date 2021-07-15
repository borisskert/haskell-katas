module GetSumSpec (spec) where

import GetSum
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic tests" $ do
    it "Basic tests" $ do
      getSum 0 1 `shouldBe` 1
      getSum 1 2 `shouldBe` 3
--      getSum 5 (-1) `shouldBe` 14
      getSum 505 4 `shouldBe` 127759
      getSum 321 123 `shouldBe` 44178
--      getSum 0 (-1) `shouldBe` (-1)
--      getSum (-50) 0 `shouldBe` (-1275)
--      getSum (-1) (-5) `shouldBe` (-15)
--      getSum (-5) (-5) `shouldBe` (-5)
--      getSum (-505) 4 `shouldBe` (-127755)
--      getSum (-321) 123 `shouldBe` (-44055)
      getSum 0 0 `shouldBe` 0
--      getSum (-5) (-1) `shouldBe` (-15)
      getSum 5 1 `shouldBe` 15
      getSum (-17) (-17) `shouldBe` (-17)
      getSum 17 17 `shouldBe` 17
  describe "Basic tests negative and positive numbers mixed" $ do
    it "Basic tests" $ do
      getSum 5 (-1) `shouldBe` 14
      getSum 0 (-1) `shouldBe` (-1)
      getSum (-50) 0 `shouldBe` (-1275)
      getSum (-505) 4 `shouldBe` (-127755)
      getSum (-321) 123 `shouldBe` (-44055)
  describe "Basic tests negative numbers only" $ do
    it "Basic tests" $ do
      getSum (-1) (-5) `shouldBe` (-15)
      getSum (-5) (-5) `shouldBe` (-5)
      getSum (-5) (-1) `shouldBe` (-15)
  describe "My Basic tests" $ do
    it "My Basic tests" $ do
      getSumAbs 0 2 `shouldBe` 3
      getSumAbs 0 3 `shouldBe` 6
      getSumAbs 0 4 `shouldBe` 10
      getSumAbs 0 5 `shouldBe` 15
      getSumAbs 0 6 `shouldBe` 21
    it "My more complex tests" $ do
      getSumAbs 2 3 `shouldBe` 5
      getSumAbs 2 4 `shouldBe` 9
      getSumAbs 2 5 `shouldBe` 14
      getSumAbs 2 6 `shouldBe` 20
  describe "Gauss positive" $ do
    it "Gauss positive" $ do
      gauss 1 `shouldBe` 1
      gauss 2 `shouldBe` 3
      gauss 3 `shouldBe` 6
      gauss 4 `shouldBe` 10
      gauss 5 `shouldBe` 15
      gauss 6 `shouldBe` 21
    it "Gauss negative" $ do
      gauss (-1) `shouldBe` (-1)
      gauss (-2) `shouldBe` (-3)
      gauss (-3) `shouldBe` (-6)
      gauss (-4) `shouldBe` (-10)
      gauss (-5) `shouldBe` (-15)
      gauss (-6) `shouldBe` (-21)

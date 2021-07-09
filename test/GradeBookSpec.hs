module GradeBookSpec (spec) where

import GradeBook (getGrade)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "should return an A" $ do
      getGrade 95 90 93 `shouldBe` 'A'
      getGrade 100 85 96 `shouldBe` 'A'
      getGrade 92 93 94 `shouldBe` 'A'
    it "should return a B" $ do
      getGrade 70 70 100 `shouldBe` 'B'
      getGrade 82 85 87 `shouldBe` 'B'
      getGrade 84 79 85 `shouldBe` 'B'
      getGrade 89 89 90 `shouldBe` 'B'
    it "should return a C" $ do
      getGrade 70 70 70 `shouldBe` 'C'
      getGrade 75 70 79 `shouldBe` 'C'
      getGrade 60 82 76 `shouldBe` 'C'
    it "should return a D" $ do
      getGrade 65 70 59 `shouldBe` 'D'
      getGrade 66 62 68 `shouldBe` 'D'
      getGrade 58 62 70 `shouldBe` 'D'
    it "should return an F" $ do
      getGrade 44 55 52 `shouldBe` 'F'
      getGrade 48 55 52 `shouldBe` 'F'
      getGrade 58 59 60 `shouldBe` 'F'

module Codewars.Kata.GradeSpec where
import Codewars.Kata.Grade (grader)
import Test.Hspec

spec :: Spec
spec = do
  describe "grader" $ do    
    it "should work for some examples" $ do
      grader 0   `shouldBe` 'F'
      grader 1.1 `shouldBe` 'F'
      grader 0.9 `shouldBe` 'A'
      grader 0.8 `shouldBe` 'B'
      grader 0.7 `shouldBe` 'C'
      grader 0.6 `shouldBe` 'D'

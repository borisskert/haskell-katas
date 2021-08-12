module Codewars.Kata.AdditionSpec where
import Codewars.Kata.Addition (add)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "add" $ do
    it "should work on some simple examples" $ do
      (add 3) 1 `shouldBe` 4
      (add 1) 1 `shouldBe` 2
      (add 0) 0 `shouldBe` 0
    it "should work for some random numbers" $ do
      property $ \x ->
        (add 0) x `shouldBe` (x :: Int)

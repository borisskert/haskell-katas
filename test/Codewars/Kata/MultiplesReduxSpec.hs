module Codewars.Kata.MultiplesReduxSpec where
import Codewars.Kata.MultiplesRedux (solution)
import Test.Hspec

spec :: Spec
spec = do
  describe "multiples of 3 and 5" $ do
    it "should work for some examples" $ do
      solution 10      `shouldBe` 23
      solution 20      `shouldBe` 78
      solution 100     `shouldBe` 2318
      solution 200     `shouldBe` 9168
      solution 1000    `shouldBe` 233168
      solution 10000   `shouldBe` 23331668
      solution 1000000 `shouldBe` 233333166668
    it "should work for large numbers" $
      let s = solution 123456789 in s `shouldBe` 3556368288624704

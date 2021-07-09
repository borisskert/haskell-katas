module Codewars.Kata.MonkeysSpec where
import Codewars.Kata.Monkeys (monkeyCount)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "monkeyCount" $ do
    it "works for n = 10" $ monkeyCount 10 `shouldBe` [1,2,3,4,5,6,7,8,9,10]
    it "works for n = 5"  $ monkeyCount  5 `shouldBe` [1,2,3,4,5]

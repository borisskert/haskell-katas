module MostValuedSpec where
import MostValued
import Test.Hspec

spec = do
  describe "Most Valuable Character" $ do
    it "Basic tests" $ do
      solve "a" `shouldBe` 'a'
      solve "aa" `shouldBe` 'a'
      solve "bcd" `shouldBe` 'b'
      solve "axyzxyz" `shouldBe` 'x'
      solve "aabccc" `shouldBe` 'c' 
  describe "helper" $ do
    it "findFirst" $ do
      findFirst 'a' [(0, 'a'), (1, 'x'), (2, 'a'), (3, 'x')] `shouldBe` 0
      findFirst 'x' [(0, 'a'), (1, 'x'), (2, 'a'), (3, 'x')] `shouldBe` 1
    it "findLast" $ do
      findLast 'a' [(0, 'a'), (1, 'x'), (2, 'a'), (3, 'x')] `shouldBe` 2
      findLast 'x' [(0, 'a'), (1, 'x'), (2, 'a'), (3, 'x')] `shouldBe` 3
    it "toValues" $ do
      toValues "axyzxyz" `shouldBe` [(0, 'a'), (3, 'x'), (3, 'y'), (3, 'z')]

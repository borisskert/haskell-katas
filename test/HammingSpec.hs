module HammingSpec where

import Hamming
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "hamming" $ do
    it "1 => 1," $ hamming 1 `shouldBe` 1
    it "2 => 2," $ hamming 2 `shouldBe` 2
    it "3 => 3," $ hamming 3 `shouldBe` 3
    it "4 => 4," $ hamming 4 `shouldBe` 4
    it "5 => 5," $ hamming 5 `shouldBe` 5
    it "6 => 6," $ hamming 6 `shouldBe` 6
    it "7 => 8," $ hamming 7 `shouldBe` 8
    it "8 => 9," $ hamming 8 `shouldBe` 9
    it "9 => 10" $ hamming 9 `shouldBe` 10
    it "10 => 12" $ hamming 10 `shouldBe` 12
    it "11 => 15" $ hamming 11 `shouldBe` 15
    it "12 => 16" $ hamming 12 `shouldBe` 16
    it "13 => 18" $ hamming 13 `shouldBe` 18
    it "14 => 20" $ hamming 14 `shouldBe` 20
    it "15 => 24" $ hamming 15 `shouldBe` 24
    it "16 => 25" $ hamming 16 `shouldBe` 25
    it "17 => 27" $ hamming 17 `shouldBe` 27
    it "18 => 30" $ hamming 18 `shouldBe` 30
    it "19 => 32" $ hamming 19 `shouldBe` 32

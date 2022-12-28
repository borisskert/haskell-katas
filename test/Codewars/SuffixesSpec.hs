module Codewars.SuffixesSpec (spec, main) where
import Codewars.Suffixes (numberToOrdinal)
import Test.Hspec
import Test.QuickCheck
import Data.List (isSuffixOf)

main = hspec spec
spec = do
  describe "numberToOrdinal" $ do
    it "should work for some examples" $ do
      numberToOrdinal 0 `shouldBe` "0"
      numberToOrdinal 1 `shouldBe` "1st"
      numberToOrdinal 2 `shouldBe` "2nd"
      numberToOrdinal 3 `shouldBe` "3rd"
      numberToOrdinal 4 `shouldBe` "4th"
      numberToOrdinal 11 `shouldBe` "11th"
      numberToOrdinal 12 `shouldBe` "12th"
      numberToOrdinal 13 `shouldBe` "13th"

    it "should end with either \"st\", \"nd\", \"rd\" or \"th\" unless zero" $ do
      property $ forAll (arbitrary `suchThat` (> 0)) $ \x ->
        numberToOrdinal x `shouldSatisfy` flip any ["th","st","nd","rd"] . flip isSuffixOf

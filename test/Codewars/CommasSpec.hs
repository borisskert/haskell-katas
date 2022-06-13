module Codewars.CommasSpec where

import Codewars.Commas (groupByCommas)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "groupByCommas" $ do
    it "should work for some examples" $ do
      groupByCommas 1 `shouldBe` "1"
      groupByCommas 10 `shouldBe` "10"
      groupByCommas 1000 `shouldBe` "1,000"
      groupByCommas 35235235 `shouldBe` "35,235,235"

--
--    it "should have the correct comma count" $ do
--      property $ forAll (arbitrary `suchThat` (>=0) ) $ \x ->
--        let commas = length . filter (==',') . groupByCommas $ x
--        in  commas `shouldBe` ((max 0 . floor . logBase 10 . fromIntegral $ x) `quot` 3)

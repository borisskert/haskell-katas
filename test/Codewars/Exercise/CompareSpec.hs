module Codewars.Exercise.CompareSpec (spec) where

import Codewars.Exercise.Compare (compareVersions)
import Codewars.Exercise.Compare.Version
import Test.Hspec
import Test.Hspec.QuickCheck

main = hspec spec

spec = describe "compareVersions" $ do
  it "returns GT if version1 is greater than version2" $ do
    compareVersions "11" "10" `shouldBe` GT
    compareVersions "10.4.6" "10.4" `shouldBe` GT
    compareVersions "10.10" "10.9" `shouldBe` GT

  prop "returns EQ if version1 is equal to version2" $ \(Version xs) ->
    compareVersions xs xs `shouldBe` EQ

  it "returns LT if version1 is less than version2" $ do
    compareVersions "10" "11" `shouldBe` LT
    compareVersions "10.4" "10.4.6" `shouldBe` LT
    compareVersions "10.99" "10.100" `shouldBe` LT

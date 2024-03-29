module AscendDescendSpec (spec) where

import AscendDescend (ascendDescend)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "Example tests" $ do
    ascendDescend 5 1 3 `shouldBe` "12321"
    ascendDescend 14 0 2 `shouldBe` "01210121012101"
    ascendDescend 11 5 9 `shouldBe` "56789876567"
    ascendDescend 11 3 12 `shouldBe` "34567891011"

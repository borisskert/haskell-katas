module SummationSpec where

import Test.Hspec
import Summation

spec :: Spec
spec = do
  it "handles small numbers" $ do
    (summation 1) `shouldBe` (1)
    (summation 10) `shouldBe` (55)

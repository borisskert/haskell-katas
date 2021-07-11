module KataSpec (spec) where

import Test.Hspec
import Kata (between)

spec :: Spec
spec = do
  it "Basic tests" $ do
    between 1 4 `shouldBe` [1, 2, 3, 4]
    between (-2) 2 `shouldBe` [-2, -1, 0, 1, 2]

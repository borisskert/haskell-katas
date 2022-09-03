module Codewars.Kata.BuyCarSpec (spec, main) where

import Codewars.Kata.BuyCar
import Test.Hspec

main = hspec spec

spec = do
  describe "nbMonths" $ do
    it "1st series" $ do
      nbMonths 2000 8000 1000 1.5 `shouldBe` [6, 766]
      nbMonths 12000 8000 1000 1.5 `shouldBe` [0, 4000]
      nbMonths 48376 66162 605 0.18147322285457002 `shouldBe` [19, 628]

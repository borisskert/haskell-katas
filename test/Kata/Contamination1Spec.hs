module Kata.Contamination1Spec where

import Kata.Contamination1 (contamination)
import Test.Hspec

spec = do
  it "example tests" $ do
    contamination "abc" "z" ?= "zzz"
    contamination "" "z" ?= ""
    contamination "abc" "" ?= ""
    contamination "_3ebzgh4" "&" ?= "&&&&&&&&"
    contamination "//case" " " ?= "      "
  where (?=) = shouldBe

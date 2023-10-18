module Codewars.Kata.GlassDoorSpec (spec) where

import Codewars.Kata.GlassDoor (stepThroughWith)
import Test.Hspec
import Test.QuickCheck

youCanTake    x = it ("can bring " ++ x) $ stepThroughWith x
youCannotTake y = it ("cannot bring " ++ y) $ not $ stepThroughWith y

spec :: Spec
spec = describe "stepThroughWith" $ do
  youCanTake "moon"
  youCannotTake "sun"
  youCanTake "glasses"
  youCannotTake "airplane"
  youCanTake "free"
  youCannotTake "branch"
  youCanTake "MAAC"
  youCanTake "hCCE"
  youCanTake "yrcppW"
  youCanTake "QNND"

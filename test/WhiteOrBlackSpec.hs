module WhiteOrBlackSpec (spec) where

import Preloaded (Colour (..))
import Test.HUnit (assertEqual)
import Test.Hspec
import WhiteOrBlack (colour)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "colour 'a' 8" White $ colour 'a' 8
    assertEqual "colour 'b' 2" Black $ colour 'b' 2
    assertEqual "colour 'f' 5" White $ colour 'f' 5

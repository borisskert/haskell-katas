module AsperandPixelCountingSpec (spec) where

import AsperandPixelCounting (countPixels)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "countPixels 1:" 11 $ countPixels 1
    assertEqual "countPixels 2:" 18 $ countPixels 2
    assertEqual "countPixels 3:" 26 $ countPixels 3
    assertEqual "countPixels 4:" 34 $ countPixels 4

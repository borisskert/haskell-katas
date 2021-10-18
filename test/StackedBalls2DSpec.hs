module StackedBalls2DSpec (spec) where

import Test.Hspec
-- import StackedBalls2D.Preloaded (shouldBeFuzzy)
import StackedBalls2D (stack)
import Control.Monad (when)

spec :: Spec
spec = do
  it "Example tests" $ do
    stack 0 `shouldBeFuzzy` 0
    stack 1 `shouldBeFuzzy` 1
    stack 2 `shouldBeFuzzy` 1.866
  where
    shouldBeFuzzy :: Double -> Double -> Expectation 
    shouldBeFuzzy actual expected = 
      when (abs ((actual - expected) / max actual expected) >= 1e-14) $ do
        expectationFailure $ "Expected " ++ show expected ++ ", but got " ++ show actual

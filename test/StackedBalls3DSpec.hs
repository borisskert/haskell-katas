module StackedBalls3DSpec (spec) where

import Test.Hspec
-- import StackedBalls3D.Preloaded (shouldBeFuzzy)
import StackedBalls3D (stack)
import Control.Monad (when)

spec :: Spec
spec = do
  it "Example tests" $ do
    stack 1 `shouldBeFuzzy` 1
    stack 2 `shouldBeFuzzy` 1.816

shouldBeFuzzy :: Double -> Double -> Expectation 
shouldBeFuzzy actual expected = 
    when (abs ((actual - expected) / max actual expected) >= 1e-14) $ do
    expectationFailure $ "Expected " ++ show expected ++ ", but got " ++ show actual

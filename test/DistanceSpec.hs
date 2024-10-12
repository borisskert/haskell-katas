module DistanceSpec (spec) where

import Preloaded (Point(..))
import Distance (distance)
import Test.Hspec
import Control.Monad (unless)

spec :: Spec
spec = do
  it "example tests" $ do
    test Point { x = 0, y =   1 } Point { x =   0, y =  0 } 1.0
    test Point { x = 0, y =   3 } Point { x =   4, y =  0 } 5
    test Point { x = 1, y =  -1 } Point { x =   1, y = -1 } 0
    test Point { x = 0, y =   0 } Point { x =   0, y =  0 } 0
    test Point { x = 0, y = 0.3 } Point { x = 0.4, y =  0 } 0.5

epsilon :: Double
epsilon = 1e-6

test :: Point -> Point -> Double -> Expectation
test a b 0 = do
  let actual = distance a b
      message = "distance " ++ show a ++ " " ++ show b ++ ": expected actual value " ++ show actual ++ " to approximately equal expected value 0 ( accepted absolute error: " ++ show epsilon ++ " )"
  unless (abs actual <= epsilon) $ expectationFailure message
test a b expected = do
  let actual = distance a b
      message = "distance " ++ show a ++ " " ++ show b ++ ": expected actual value " ++ show actual ++ " to approximately equal expected value " ++ show expected ++ " ( accepted relative error: " ++ show epsilon ++ " )"
  unless (abs (actual - expected) <= epsilon * abs expected) $ expectationFailure message
  
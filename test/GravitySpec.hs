module GravitySpec (spec) where

import Test.Hspec
import Gravity (solution)
import Control.Monad (when)

spec :: Spec
spec = do
  it "example tests" $ do
    solution [1000,1000,100] ["g","kg","m"] `shouldBeFuzzy` 6.67e-12
    solution [1000,1000,100] ["kg","kg","m"] `shouldBeFuzzy` 6.67e-9
    solution [1000,1000,100] ["kg","kg","cm"] `shouldBeFuzzy` 0.0000667

epsilon :: (Fractional a) => a
epsilon = 1e-6

shouldBeFuzzy :: (Eq a,Ord a,Show a,Fractional a) => a -> a -> Expectation
shouldBeFuzzy actual 0 = when (abs actual > epsilon) $ expectationFailure $ "Expected actual value " ++ show actual ++ " to approximately equal expected value 0 (accepted relative error: " ++ show epsilon ++ ")"
shouldBeFuzzy actual expected = when (abs (actual - expected) > epsilon * expected) $ expectationFailure $ "Expected actual value " ++ show actual ++ " to approximately equal expected value " ++ show expected ++ " (accepted relative error: " ++ show epsilon ++ ")"

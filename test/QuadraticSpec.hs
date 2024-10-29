module QuadraticSpec where

import Quadratic (roots)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "roots 1.0 (-35.0) (-23.0)" $
      roots 1.0 (-35.0) (-23.0) `shouldBeApproxMaybe` Just 35.0
    it "roots 6.0 0.0 (-24.0)" $
      roots 6.0 0.0 (-24.0) `shouldBeApproxMaybe` Just 0.0
    it "roots (-5.0) 21.0 0.0" $
      roots (-5.0) 21.0 0.0 `shouldBeApproxMaybe` Just 4.2
    it "roots 6.0 4.0 8.0" $
      roots 6.0 4.0 8.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 5.0 (-24.0)" $
      roots 1.0 5.0 (-24.0) `shouldBeApproxMaybe` Just (-5.0)
    it "roots 3.0 11.0 6.0" $
      roots 3.0 11.0 6.0 `shouldBeApproxMaybe` Just (-3.6666666666666665)
    it "roots 2.0 2.0 9.0" $
      roots 2.0 2.0 9.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 (-5/3) (-26.0)" $
      roots 1.0 (-5 / 3) (-26.0) `shouldBeApproxMaybe` Just 1.6666666666666667
    it "roots 1.0 6.0 10.0" $
      roots 1.0 6.0 10.0 `shouldBeApproxMaybe` Nothing
    it "roots 7.0 (-2.0) (-5.0)" $
      roots 7.0 (-2.0) (-5.0) `shouldBeApproxMaybe` Just 0.2857142857142857
    it "roots 1.0 8.0 20.0" $
      roots 1.0 8.0 20.0 `shouldBeApproxMaybe` Nothing
    it "roots 2.0 3.0 (-2.0)" $
      roots 2.0 3.0 (-2.0) `shouldBeApproxMaybe` Just (-1.5)
    it "roots 1.0 4.0 12.0" $
      roots 1.0 4.0 12.0 `shouldBeApproxMaybe` Nothing
    it "roots 3.0 (-2.0) (-5.0)" $
      roots 3.0 (-2.0) (-5.0) `shouldBeApproxMaybe` Just 0.6666666666666666
    it "roots 3.0 4.0 9.0" $
      roots 3.0 4.0 9.0 `shouldBeApproxMaybe` Nothing
    it "roots 5.0 4.0 0.0" $
      roots 5.0 4.0 0.0 `shouldBeApproxMaybe` Just (-0.8)
    it "roots 4.0 (-5.0) 0.0" $
      roots 4.0 (-5.0) 0.0 `shouldBeApproxMaybe` Just 1.25
    it "roots 1.0 4.0 9.0" $
      roots 1.0 4.0 9.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 0.0 (-49.0)" $
      roots 1.0 0.0 (-49.0) `shouldBeApproxMaybe` Just 0.0
    it "roots 2.0 8.0 8.0" $
      roots 2.0 8.0 8.0 `shouldBeApproxMaybe` Just (-4.0)
    it "roots 1.0 0.0 (-0.16)" $
      roots 1.0 0.0 (-0.16) `shouldBeApproxMaybe` Just 0.0
    it "roots 1.0 6.0 12.0" $
      roots 1.0 6.0 12.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 0.0 (-9.0)" $
      roots 1.0 0.0 (-9.0) `shouldBeApproxMaybe` Just 0.0
    it "roots (-3.0) 0.0 12.0" $
      roots (-3.0) 0.0 12.0 `shouldBeApproxMaybe` Just 0.0
    it "roots 1.0 3.0 9.0" $
      roots 1.0 3.0 9.0 `shouldBeApproxMaybe` Nothing
    it "roots 3.0 7.0 0.0" $
      roots 3.0 7.0 0.0 `shouldBeApproxMaybe` Just (-2.3333333333333335)
    it "roots 5.0 3.0 6.0" $
      roots 5.0 3.0 6.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 4.0 4.0" $
      roots 1.0 4.0 4.0 `shouldBeApproxMaybe` Just (-4.0)
    it "roots (-1.0) 0.0 5.29" $
      roots (-1.0) 0.0 5.29 `shouldBeApproxMaybe` Just 0.0
    it "roots 1.0 12.0 36.0" $
      roots 1.0 12.0 36.0 `shouldBeApproxMaybe` Just (-12.0)
    it "roots 1.0 0.0 (-0.09)" $
      roots 1.0 0.0 (-0.09) `shouldBeApproxMaybe` Just 0.0
    it "roots 2.0 5.0 11.0" $
      roots 2.0 5.0 11.0 `shouldBeApproxMaybe` Nothing
    it "roots 3.0 0.0 (-15.0)" $
      roots 3.0 0.0 (-15.0) `shouldBeApproxMaybe` Just 0.0
    it "roots 1.0 (-3.0) 0.0" $
      roots 1.0 (-3.0) 0.0 `shouldBeApproxMaybe` Just 3.0
    it "roots 1.0 8.0 16.0" $
      roots 1.0 8.0 16.0 `shouldBeApproxMaybe` Just (-8.0)
    it "roots 2.0 6.0 9.0" $
      roots 2.0 6.0 9.0 `shouldBeApproxMaybe` Nothing
    it "roots (-1.0) 36.0 0.0" $
      roots (-1.0) 36.0 0.0 `shouldBeApproxMaybe` Just 36.0
    it "roots 5.0 (-8.0) 0.0" $
      roots 5.0 (-8.0) 0.0 `shouldBeApproxMaybe` Just 1.6
    it "roots 1.0 5.0 12.0" $
      roots 1.0 5.0 12.0 `shouldBeApproxMaybe` Nothing
    it "roots (-14.0) 0.0 0.0" $
      roots (-14.0) 0.0 0.0 `shouldBeApproxMaybe` Just 0.0
    it "roots 1.0 7.0 20.0" $
      roots 1.0 7.0 20.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 (-6.0) 0.0" $
      roots 1.0 (-6.0) 0.0 `shouldBeApproxMaybe` Just 6.0
    it "roots 1.0 (-11.0) 30.0" $
      roots 1.0 (-11.0) 30.0 `shouldBeApproxMaybe` Just 11.0
    it "roots 1.0 3.0 12.0" $
      roots 1.0 3.0 12.0 `shouldBeApproxMaybe` Nothing
    it "roots 1.0 6.0 9.0" $
      roots 1.0 6.0 9.0 `shouldBeApproxMaybe` Just (-6.0)
    it "roots 8.0 47.0 41.0" $
      roots 8.0 47.0 41.0 `shouldBeApproxMaybe` Just (-5.875)

infix 1 `shouldBeApproxMaybe`

shouldBeApproxMaybe :: (Fractional a, Ord a, Show a) => Maybe a -> Maybe a -> Expectation
shouldBeApproxMaybe a@(Just actual) e@(Just expected) =
  if abs (actual - expected) < margin * max 1 (abs expected)
    then return ()
    else expectationFailure message
  where
    margin = 1e-6
    message =
      concat
        [ "Test Failed",
          "\nexpected: ",
          show e,
          " within margin of ",
          show margin,
          "\n but got: ",
          show a
        ]
shouldBeApproxMaybe actual expected = actual `shouldBe` expected

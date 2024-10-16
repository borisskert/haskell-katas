module GeometrySpec where

import Geometry (circleArea)
import Preloaded
import Test.Hspec
import Test.Hspec.Codewars

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "circleArea $ Circle (Point 10 10) 30" $ do
      circleArea (Circle (Point 10 10) 30) `shouldBeApprox` 2827.4333882308138
    it "circleArea $ Circle (Point 25 (-70)) 30" $ do
      circleArea (Circle (Point 25 (-70)) 30) `shouldBeApprox` 2827.4333882308138
    it "circleArea $ Circle (Point (-15) 5) 0" $ do
      circleArea (Circle (Point (-15) 5) 0) `shouldBeApprox` 0
    it "circleArea $ Circle (Point (-15) 5) 12.5" $ do
      circleArea (Circle (Point (-15) 5) 12.5) `shouldBeApprox` 490.8738521234052

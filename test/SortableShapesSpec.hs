module SortableShapesSpec where
import SortableShapes (Shape (..))
import Data.List (sort)
import Test.QuickCheck
import Test.Hspec

shapes :: [Shape]
shapes = [
    CustomShape area,
    Square side,
    Circle radius,
    Triangle triangleBase1 triangleHeight1,
    Triangle triangleBase2 triangleHeight2,
    Rectangle width height,
    CustomShape area2]
    where
      area = 1.1234
      side = 1.1234
      radius = 1.1234
      triangleBase1 = 2.0
      triangleHeight1 = 5.0
      triangleBase2 = 3.0
      triangleHeight2 = 4.0
      width = 4
      height = 4
      area2 = 16.1
      
spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $
        forAll (shuffle shapes) (\ss -> sort shapes == shapes)

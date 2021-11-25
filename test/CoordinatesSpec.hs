module CoordinatesSpec (spec, main) where
import Coordinates (coordinates)
import Test.Hspec
import Test.Hspec.Codewars

(a, b) ?~= (c, d) = do
  a `shouldBeApprox` c
  b `shouldBeApprox` d

main = hspec spec
spec = do
  describe "The coordinate function" $ do
    it "Test 1" $ do
      coordinates 90 1 ?~= (0.0, 1.0)
    it "Test 2" $ do
      coordinates 90 2 ?~= (0.0, 2.0)
    it "Test 3" $ do
      coordinates 0 1 ?~= (1.0, 0.0)
    it "Test 4" $ do
      coordinates 45.0 1 ?~= (0.7071067812, 0.7071067812)

module CircleSpec (spec, main) where
import Circle (circleArea)
import Test.Hspec
import Test.Hspec.Codewars

-- | Compares two doubles via relative error.
(~~) :: Maybe Double -> Maybe Double -> Expectation
(Just a) ~~ (Just b) = a `shouldBeApprox` b
x        ~~ y        = x `shouldBe` y

main = hspec spec
spec = do
  describe "circle" $ do
    it "should work for some simple examples" $ do
      circleArea (-1) ~~ Nothing
      circleArea 0 ~~ Nothing
      circleArea 1 ~~ Just (    pi)
      circleArea 2 ~~ Just (4 * pi)
      circleArea 3 ~~ Just (9 * pi)

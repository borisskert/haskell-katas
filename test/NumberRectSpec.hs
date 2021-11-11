module NumberRectSpec where
import NumberRect (numberOfRectangles)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for basic examples" $ do
    numberOfRectangles 1 1 `shouldBe` 1
    numberOfRectangles 1 2 `shouldBe` 3
    numberOfRectangles 1 3 `shouldBe` 6
    numberOfRectangles 1 4 `shouldBe` 10
    numberOfRectangles 2 2 `shouldBe` 9
    numberOfRectangles 3 2 `shouldBe` 18
    numberOfRectangles 4 4 `shouldBe` 100
    numberOfRectangles 5 5 `shouldBe` 225
    numberOfRectangles 10 10 `shouldBe` 3025
    numberOfRectangles 4 2 `shouldBe` 30
    numberOfRectangles 4 3 `shouldBe` 60
    numberOfRectangles 5 2 `shouldBe` 45
    numberOfRectangles 5 3 `shouldBe` 90
    numberOfRectangles 5 4 `shouldBe` 150

spec :: Spec
spec = do
  describe "Sample Tests" examples

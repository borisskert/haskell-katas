module SumArraySpec where
import Test.Hspec
import SumArray (sumArray)

spec :: Spec
spec = do
      describe "Example Tests" $ do
        it "should work with example tests" $
          sumArray (Just [6, 2, 1, 8, 10]) `shouldBe` 16

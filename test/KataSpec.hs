module KataSpec where
import Test.Hspec
import Kata (sumArray)

spec :: Spec
spec = do
      describe "Example Tests" $ do
        it "should work with example tests" $
          sumArray (Just [6, 2, 1, 8, 10]) `shouldBe` 16

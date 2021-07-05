module Multiply.Bug.FixSpec where
import Multiply.Bug.Fix
import Test.Hspec

spec :: Spec
spec = do
  describe "multiply" $ do
    it "should work for some examples" $ do
      multiply 1 2 `shouldBe` 2
      multiply 5 3 `shouldBe` 15
      multiply 3 4 `shouldBe` 12
      multiply 5 4 `shouldBe` 20

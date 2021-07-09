module AverageSpec (spec, main) where
import Average
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "The avg function" $ do
    it "should work for some examples" $ do
      avg [1,1,1] `shouldBe` 1
      avg [1,2,3] `shouldBe` 2
      avg [1,2,3,4] `shouldBe` 2.5

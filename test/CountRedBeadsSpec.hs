module CountRedBeadsSpec where
import Test.Hspec
import CountRedBeads (countRedBeads)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      countRedBeads 0 `shouldBe` 0
      countRedBeads 1 `shouldBe` 0
      countRedBeads 3 `shouldBe` 4
      countRedBeads 5 `shouldBe` 8

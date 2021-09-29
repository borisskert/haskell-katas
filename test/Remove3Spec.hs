module Remove3Spec where
import Remove3 (remove)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
        remove "Hi!"               `shouldBe` "Hi!"
        remove "Hi!!!"             `shouldBe` "Hi!!!"
        remove "!Hi"               `shouldBe` "Hi"
        remove "!Hi!"              `shouldBe` "Hi!"
        remove "Hi! Hi!"           `shouldBe` "Hi Hi!"
        remove "Hi"                `shouldBe` "Hi"   

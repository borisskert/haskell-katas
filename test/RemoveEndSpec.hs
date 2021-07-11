module RemoveEndSpec where
import Test.Hspec
import RemoveEnd (remove)

spec :: Spec
spec = do
    describe "Basic Tests" $
      it "should work with basic tests" $ do
        remove "Hi!" `shouldBe` "Hi"
        remove "Hi!!!" `shouldBe` "Hi"
        remove "!Hi" `shouldBe` "!Hi"
        remove "!Hi!" `shouldBe` "!Hi"
        remove "Hi! Hi!" `shouldBe` "Hi! Hi"
        remove "Hi" `shouldBe` "Hi"

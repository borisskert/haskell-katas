module RemoveSpec where
import Test.Hspec
import Remove (remove)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      remove "Hi!" `shouldBe` "Hi"
      remove "Hi!!!" `shouldBe` "Hi!!"
      remove "!Hi" `shouldBe` "!Hi"
      remove "!Hi!!!!!" `shouldBe` "!Hi!!!!"
      remove "Hi! Hi!" `shouldBe` "Hi! Hi"
      remove "Hi" `shouldBe` "Hi"

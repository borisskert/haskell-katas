module ExplodeSpec where
import Explode (explode)
import Test.Hspec


spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      explode "312"    `shouldBe` "333122"
      explode "102269" `shouldBe` "12222666666999999999"

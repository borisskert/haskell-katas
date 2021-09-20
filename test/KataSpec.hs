module KataSpec where
import Test.Hspec
import Kata

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      countLettersAndDigits "n!!ice!!123" `shouldBe` 7

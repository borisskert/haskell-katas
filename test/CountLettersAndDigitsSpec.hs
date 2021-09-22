module CountLettersAndDigitsSpec where
import Test.Hspec
import CountLettersAndDigits ( countLettersAndDigits )

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      countLettersAndDigits "n!!ice!!123" `shouldBe` 7

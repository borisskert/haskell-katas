module SentenceToWordsSpec where
import SentenceToWords
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The splitSentence function" $ do
    it "should work for some examples" $ do
      splitSentence "hello world" `shouldBe` ["hello", "world"]

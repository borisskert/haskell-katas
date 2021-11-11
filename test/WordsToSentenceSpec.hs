module WordsToSentenceSpec where
import WordsToSentence
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The wordsToSentence function" $ do
    it "should work for some examples" $ do
      wordsToSentence ["hello", "world"] `shouldBe` "hello world"

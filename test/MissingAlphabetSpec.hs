module MissingAlphabetSpec where 
import MissingAlphabet
import Test.Hspec

spec = do
  describe "Missing Alphabet" $ do
    it "Basic tests" $ do
      insertMissingLetters "hellllllllllllooooo" `shouldBe` "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZllllllllllloPQRSTUVWXYZoooo"
      insertMissingLetters "xpixax" `shouldBe` "xYZpQRSTUVWYZiJKLMNOQRSTUVWYZxaBCDEFGHJKLMNOQRSTUVWYZx"

module RemoveDuplicateWordsSpec where
import RemoveDuplicateWords
import Test.Hspec

spec = do
  describe "Remove Duplicate Words" $ do
    it "Basic tests" $ do
      removeDuplicateWords "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta" `shouldBe` "alpha beta gamma delta"
      removeDuplicateWords "my cat is cat fat" `shouldBe` "my cat is fat"

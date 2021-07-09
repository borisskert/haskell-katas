module RemoveExclamationMarksSpec where
import RemoveExclamationMarks
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The removeExclamationMarks function" $ do
    it "should work for some examples" $ do
      removeExclamationMarks "Hello World!" `shouldBe` "Hello World"

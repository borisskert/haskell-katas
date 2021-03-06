module FindMissingLetterSpec where
import Test.Hspec
import FindMissingLetter

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      findMissingLetter ['a','b','c','d','f'] `shouldBe` 'e'
      findMissingLetter ['O','Q','R','S'] `shouldBe` 'P'

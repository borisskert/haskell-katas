module RevSeqSpec where
import RevSeq
import Test.Hspec

spec :: Spec
spec = do
  describe "Reverse Sequence" $ do
    it "Basic tests" $ do
      reverseSeq 5 `shouldBe` [5,4,3,2,1]
      reverseSeq 6 `shouldBe` [6,5,4,3,2,1]

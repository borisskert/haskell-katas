module PersonTypeStringRepresentationSpec where
import PersonTypeStringRepresentation
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic tests" $ do
    it "should work for some examples" $ do
      show (Person "John" "Smith") `shouldBe` "John Smith"

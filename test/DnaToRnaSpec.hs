module DnaToRnaSpec where
import DnaToRna (dnaToRna)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for some examples" $ do
    dnaToRna "TTTT" `shouldBe` "UUUU"
    dnaToRna "GCAT" `shouldBe` "GCAU"
    dnaToRna "GACCGCCGCC" `shouldBe` "GACCGCCGCC"

spec :: Spec
spec = do
  describe "Examples" examples

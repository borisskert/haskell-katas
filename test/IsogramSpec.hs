module IsogramSpec where
import Isogram
import Test.Hspec

spec :: Spec
spec =
  describe "isIsogram" $ do
    it "testing 'Dermatoglyphics'" $ shouldBe (isIsogram "Dermatoglyphics") True
    it "testing 'moose'" $ shouldBe (isIsogram "moose") False
    it "testing 'aba'" $ shouldBe (isIsogram "aba") False
    it "testing 'moOse'" $ shouldBe (isIsogram "moOse") False

module PadovanSpec where
import Padovan (padovan)
import Test.Hspec

spec :: Spec
spec = do
    describe "Example Tests" $ do
        it "1 -> 1" $ padovan 1 `shouldBe` 1
        it "8 -> 7" $ padovan 8 `shouldBe` 7
        it "10 -> 9" $ padovan 10 `shouldBe` 12

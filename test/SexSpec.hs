module SexSpec where

import Test.Hspec
import Sex

spec :: Spec
spec = do
    describe "simple cases" $ do
        it "handles hot dog" $ do
            sex "XY" `shouldBe` "Congratulations! You\'re going to have a son."
        it "handles not hot dog" $ do
            sex "XX" `shouldBe` "Congratulations! You\'re going to have a daughter."

main = hspec spec

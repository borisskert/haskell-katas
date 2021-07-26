module Sequence.JorgeVS.KataSpec where
import Test.Hspec
import Sequence.JorgeVS.Kata

spec :: Spec
spec = do
    describe "Sequence Test" $ do
      it "n = 6" $ do
        (sequenceSum 6) `shouldBe` "0+1+2+3+4+5+6 = 21"

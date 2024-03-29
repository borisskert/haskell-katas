module AllOrNothingSpec (spec) where

import AllOrNothing (possiblyPerfect)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    possiblyPerfect "A_C_B" "ADCEB" `shouldBe` True
    possiblyPerfect "B_B" "BDC" `shouldBe` False
    possiblyPerfect "T_FFF" "FFTTT" `shouldBe` True
    possiblyPerfect "BA__" "BACC" `shouldBe` True
    possiblyPerfect "ABA_" "BACC" `shouldBe` True
    possiblyPerfect "ABC_" "BACC" `shouldBe` False
    possiblyPerfect "B_" "CA" `shouldBe` True
    possiblyPerfect "BA" "CA" `shouldBe` False
    possiblyPerfect "B" "B" `shouldBe` True
    possiblyPerfect "_T__" "TFFF" `shouldBe` True
    possiblyPerfect "_T__" "TTFT" `shouldBe` True
    possiblyPerfect "_TTT" "TTFT" `shouldBe` False
    possiblyPerfect "_TTT" "TTTT" `shouldBe` True
    possiblyPerfect "_TTT" "FFFF" `shouldBe` True
    possiblyPerfect "____" "FFFF" `shouldBe` True

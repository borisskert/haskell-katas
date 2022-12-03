module Kata.RLESpec where

import Kata.RLE (encode,decode)
import Test.Hspec

spec :: Spec
spec = do
    describe "Example tests" $ do
      it "Test encode" $ do
        encode "A" `shouldBe` "1A"
        encode "AAA" `shouldBe` "3A"
        encode "AB" `shouldBe` "1A1B"
        encode "AAABBBCCCA" `shouldBe` "3A3B3C1A"
      it "Test decode" $ do
        decode "1A" `shouldBe` "A"
        decode "3A" `shouldBe` "AAA"
        decode "1A1B" `shouldBe` "AB"
        decode "3A3B3C1A" `shouldBe` "AAABBBCCCA"
      it "Round trip" $ do
        decode (encode "AAAAAAAAAAB") `shouldBe` "AAAAAAAAAAB"
        decode (encode "ABCDEFGHIJKLMNOPQRSTUVWXYZ") `shouldBe` "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        encode (decode "10A1B") `shouldBe` "10A1B"
        encode (decode "1A1B1C1D1E1F1G1H1I1J1K1L1M1N1O1P1Q1R1S1T1U1V1W1X1Y1Z") `shouldBe` "1A1B1C1D1E1F1G1H1I1J1K1L1M1N1O1P1Q1R1S1T1U1V1W1X1Y1Z"

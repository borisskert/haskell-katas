module BinariesSpec (spec) where

import Binaries (code,decode)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "code" $ do
      code "62" `shouldBe` "0011100110"
      code "55337700" `shouldBe` "001101001101011101110011110011111010"
      code "1119441933000055" `shouldBe` "1111110001100100110000110011000110010111011110101010001101001101"
      code "69" `shouldBe` "00111000011001"
      code "86" `shouldBe` "00011000001110"
    it "decode" $ do
      decode "10001111" `shouldBe` "07"
      decode "001100001100" `shouldBe` "44"
      decode "001100001100001100001110001110001110011101110111001110001110001110001111001111001111001100001100001100" `shouldBe` "444666333666777444"
      decode "01110111110001100100011000000110000011110011110111011100110000110001100110" `shouldBe` "33198877334422"
      decode "0011010011010011011010101111110011000011000011000011100011100011100011100011100011100001100100011001000110011100011001001111001111001111001111001111001111" `shouldBe` "55500011144466666699919777777"
      decode "01110111011111000110010011110011110011110011110011110011110111011101110110011001100110011001101111111010101100011001000110000001100000011000" `shouldBe` "3331977777733322222211100019888"
      decode "000110000001100011000110011111101011111100011001101000011001000110011100011001" `shouldBe` "881911001119009919"
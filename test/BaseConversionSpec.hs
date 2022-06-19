module BaseConversionSpec (spec, main) where

import BaseConversion (Alphabet (..), convert)
-- import BaseConversion.Normalize (normalize)
import Test.Hspec
import Test.QuickCheck

bin, oct, dec, hex, alphaLower, alphaUpper, alpha, alphaNumeric :: Alphabet
bin = Alphabet $ "01"
oct = Alphabet $ ['0' .. '7']
dec = Alphabet $ ['0' .. '9']
hex = Alphabet $ ['0' .. '9'] ++ ['a' .. 'f']
alphaLower = Alphabet $ ['a' .. 'z']
alphaUpper = Alphabet $ ['A' .. 'Z']
alpha = Alphabet $ ['a' .. 'z'] ++ ['A' .. 'Z']
alphaNumeric = Alphabet $ ['0' .. '9'] ++ ['a' .. 'z'] ++ ['A' .. 'Z']

allAlphabets = [bin, oct, dec, hex, alphaLower, alphaUpper, alpha, alphaNumeric]

main = hspec spec

spec = do
  describe "convert" $ do
    it "should work on some simple examples" $ do
      convert dec bin "15" `shouldBe` "1111"
      convert dec oct "15" `shouldBe` "17"
      convert bin dec "1010" `shouldBe` "10"
      convert bin hex "1010" `shouldBe` "a"

      convert dec alpha "0" `shouldBe` "a"
      convert dec alphaLower "27" `shouldBe` "bb"
      convert alphaLower hex "hello" `shouldBe` "320048"
      convert dec hex "15" `shouldBe` "f"
      convert dec hex "10" `shouldBe` "a"
      convert dec hex "255" `shouldBe` "ff"
      convert hex dec "f" `shouldBe` "15"
      convert hex dec "a" `shouldBe` "10"
      convert hex dec "ff" `shouldBe` "255"

    it "shouldn't change anything for the same base" $ do
      --   property $
      --     forAll (elements allAlphabets) $ \a ->
      --     forAll (listOf1 . elements . getDigits $ a) $ \x ->
      --     let xs = normalize a x
      --     in convert a a xs `shouldBe` xs
      convert (Alphabet "ABCDEFGHIJKLMNOPQRSTUVWXYZ") (Alphabet "ABCDEFGHIJKLMNOPQRSTUVWXYZ") "YEOJXSKMAIFHFR" `shouldBe` "YEOJXSKMAIFHFR"
      convert oct oct "00" `shouldBe` "0"

    it "should be able to revert the conversion" $ do
      --   property $
      --     forAll (elements allAlphabets) $ \a ->
      --     forAll (elements allAlphabets) $ \b ->
      --     forAll (listOf1 . elements . getDigits $ a) $ \x ->
      --     let xs = normalize a x
      --     in convert b a (convert a b xs) `shouldBe` xs
      (convert (Alphabet "nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM") (Alphabet "0123456789")
        $ "lhyBqBuTEzzSrdq") `shouldBe` "25777467166638639887096899"
      (convert (Alphabet "0123456789") (Alphabet "nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM")
        $ "25777467166638639887096899") `shouldBe` "lhyBqBuTEzzSrdq"
      (convert (Alphabet "0123456789") (Alphabet "nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM")
        . convert (Alphabet "nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM") (Alphabet "0123456789")
        $ "lhyBqBuTEzzSrdq") `shouldBe` "lhyBqBuTEzzSrdq"

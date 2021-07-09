module Codewars.StringsSpec where

import Codewars.Strings (doubleChar)
import Test.Hspec

spec :: Spec
spec = do
  describe "doubleChar" $ do
    it "works for some examples" $ do
      doubleChar "abcd" `shouldBe` "aabbccdd"
      doubleChar "Adidas" `shouldBe` "AAddiiddaass"
      doubleChar "1337" `shouldBe` "11333377"
      doubleChar "illuminati" `shouldBe` "iilllluummiinnaattii"
      doubleChar "123456" `shouldBe` "112233445566"
      doubleChar "%^&*(" `shouldBe` "%%^^&&**(("

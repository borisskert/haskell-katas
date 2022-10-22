module ReversingAProcessSpec (spec) where

import ReversingAProcess (decode)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    decode "1273409kuqhkoynvvknsdwljantzkpnmfgf" `shouldBe` Right "uogbucwnddunktsjfanzlurnyxmx"
    decode "1544749cdcizljymhdmvvypyjamowl" `shouldBe` Right "mfmwhbpoudfujjozopaugcb"
    decode "105860ymmgegeeiwaigsqkcaeguicc" `shouldBe` Left "Impossible to decode"
    decode "1122305vvkhrrcsyfkvejxjfvafzwpsdqgp" `shouldBe` Right "rrsxppowmjsrclfljrajtybwviqb"

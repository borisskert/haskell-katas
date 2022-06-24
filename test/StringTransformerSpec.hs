module StringTransformerSpec where

import StringTransformer
import Test.Hspec

spec = do
  describe "String Transformer" $ do
    it "Basic tests" $ do
      stringTransformer "Example Input" `shouldBe` "iNPUT eXAMPLE"
      stringTransformer "Example  Input" `shouldBe` "iNPUT  eXAMPLE"
      stringTransformer " Example Input " `shouldBe` " iNPUT eXAMPLE "

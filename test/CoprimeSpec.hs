module CoprimeSpec (spec) where

import Coprime (coprime)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    coprime 20 27 `shouldBe` True
    coprime 12 39 `shouldBe` False

module ChainMeSpec (spec) where

import ChainMe (chain)
import Test.Hspec

add = (+ 1)
mul = (* 30)

spec :: Spec
spec = do
  it "example tests" $ do
    chain 2 [add,mul] `shouldBe` 90
    chain 42 [] `shouldBe` 42

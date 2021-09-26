module TripleXSpec (spec) where

import TripleX (tripleX)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    tripleX "abraxxxas" `shouldBe` True
    tripleX "xoxotrololololololoxxx" `shouldBe` False
    tripleX "soft kitty, warm kitty, xxxxx" `shouldBe` True
    tripleX "softx kitty, warm kitty, xxxxx" `shouldBe` False

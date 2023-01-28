module WordToInitialNumberSpec (spec) where

import Test.Hspec
import WordToInitialNumber (convert)

spec :: Spec
spec = do
  it "example tests" $ do
    convert "CodeWars" `shouldBe` 10234567
    convert "KATA" `shouldBe` 1020
    convert "" `shouldBe` 0

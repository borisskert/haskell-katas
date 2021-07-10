module KataSpec (spec) where

import Test.Hspec
import Kata (sumStr)

spec :: Spec
spec = do
  it "Basic tests" $ do
    sumStr "4" "5" `shouldBe` "9"
    sumStr "34" "5" `shouldBe` "39"
    sumStr "" "8" `shouldBe` "8"
    sumStr "9" "" `shouldBe` "9"
    sumStr "" "" `shouldBe` "0"

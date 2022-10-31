module SF23Spec where

import SF23
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    squareDigitsSequence 1 `shouldBe` 2
    squareDigitsSequence 16 `shouldBe` 9
    squareDigitsSequence 43 `shouldBe` 13
    squareDigitsSequence 67 `shouldBe` 11
    squareDigitsSequence 73 `shouldBe` 10
    squareDigitsSequence 80 `shouldBe` 14
    squareDigitsSequence 103 `shouldBe` 4
    squareDigitsSequence 203 `shouldBe` 5
    squareDigitsSequence 232 `shouldBe` 15
    squareDigitsSequence 234 `shouldBe` 12
    squareDigitsSequence 282 `shouldBe` 16
    squareDigitsSequence 353 `shouldBe` 14
    squareDigitsSequence 362 `shouldBe` 7
    squareDigitsSequence 372 `shouldBe` 12
    squareDigitsSequence 383 `shouldBe` 6
    squareDigitsSequence 386 `shouldBe` 7
    squareDigitsSequence 387 `shouldBe` 15
    squareDigitsSequence 403 `shouldBe` 13
    squareDigitsSequence 458 `shouldBe` 13
    squareDigitsSequence 501 `shouldBe` 12
    squareDigitsSequence 512 `shouldBe` 15
    squareDigitsSequence 563 `shouldBe` 8
    squareDigitsSequence 569 `shouldBe` 16
    squareDigitsSequence 608 `shouldBe` 4

-- the following line is optional for 8.2
main = hspec spec

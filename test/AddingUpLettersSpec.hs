module AddingUpLettersSpec (spec) where

import Test.Hspec
import AddingUpLetters (addLetters, toValue, toLetter)

spec :: Spec
spec = do
  it "example tests" $ do
    toValue 'z' `shouldBe` 0
    toValue 'a' `shouldBe` 1
    toValue 'b' `shouldBe` 2
    toValue 'c' `shouldBe` 3
    toValue 'y' `shouldBe` 25
    toLetter 0 `shouldBe` 'z'
    toLetter 1 `shouldBe` 'a'
    toLetter 2 `shouldBe` 'b'
    toLetter 3 `shouldBe` 'c'
    toLetter 6 `shouldBe` 'f'
    toLetter 12 `shouldBe` 'l'
    toLetter 24 `shouldBe` 'x'
    toLetter 25 `shouldBe` 'y'
    toLetter 26 `shouldBe` 'z'
    addLetters ['z'] `shouldBe` 'z'
    addLetters ['a'] `shouldBe` 'a'
    addLetters ['b'] `shouldBe` 'b'
    addLetters ['y'] `shouldBe` 'y'
    addLetters ['a', 'b', 'c'] `shouldBe` 'f'
    addLetters ['a', 'b'] `shouldBe` 'c'
    addLetters ['c'] `shouldBe` 'c'
    addLetters ['z', 'a'] `shouldBe` 'a'
    addLetters ['y', 'c', 'b'] `shouldBe` 'd'
    addLetters [] `shouldBe` 'z'
    
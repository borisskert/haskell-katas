module PalindromeSpec where

import Test.Hspec
import Palindrome

spec :: Spec
spec = do
  it "finds the number of palindromes" $ do
    palindrome 2 `shouldBe` Just 0
    palindrome 141221001 `shouldBe` Just 5
    palindrome 1551 `shouldBe` Just 2
    palindrome 13598 `shouldBe` Just 0
    palindrome (-4505) `shouldBe` Nothing

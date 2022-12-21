module PalindromeSpec where

import Palindrome
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "finds the closest palindrome" $ do
    palindrome 8 `shouldBe` Just 11
    palindrome 281 `shouldBe` Just 282
    palindrome 1029 `shouldBe` Just 1001
    palindrome 1221 `shouldBe` Just 1221
    palindrome (-1029) `shouldBe` Nothing

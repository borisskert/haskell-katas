module Codewars.Kata.PalindromeSpec where

import Codewars.Kata.Palindrome (isPalindrome)
import Control.Applicative
import Data.List
import Test.Hspec
import Test.Hspec.Codewars
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isPalindrome" $ do
    context "static tests" $ do
      let given = id
          returns s r = it ("returns " ++ show r ++ " on " ++ s) $ isPalindrome s `shouldBe` r
      given "" `returns` True
      given "453" `returns` False
      given "454" `returns` True
      given "c" `returns` True
      given "a!ba" `returns` True

    context "random tests" $ do
      prop "returns True for random single character strings" $ \c ->
        isPalindrome [c] `shouldBe` True

      prop "returns True for strings consisting of one character" $
        forAll (replicate <$> choose (1, 20) <*> choose ('a', 'z')) $ \xs ->
          isPalindrome xs `shouldBe` True

      prop "returns True on some simple palindromes" $
        let palindromize xs = xs ++ reverse xs
         in forAll (fmap palindromize $ listOf1 $ choose ('A', 'z')) $ \xs ->
              isPalindrome xs `shouldBe` True

      prop "returns False on non-palindromes" $
        let unpalindromize xs = 'A' : 'Q' : 'U' : (take 4 xs ++ xs)
         in forAll (fmap unpalindromize $ listOf1 $ choose ('A', 'Z')) $ \xs ->
              isPalindrome xs `shouldBe` False

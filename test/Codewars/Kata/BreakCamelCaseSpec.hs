module Codewars.Kata.BreakCamelCaseSpec (spec, main) where
import Codewars.Kata.BreakCamelCase (solution)
import Test.Hspec
import Test.QuickCheck
import Data.Char (toUpper)

main = hspec spec
spec =
  describe "break camelCase" $ do
    it "should work for some small examples" $ do
      solution "HelloWorld"     `shouldBe` "Hello World"
      solution "helloWorld"     `shouldBe` "hello World"
      solution "camelCase"      `shouldBe` "camel Case"
      solution "breakCamelCase" `shouldBe` "break Camel Case"
    it "should have the correct length for random words" $ do
      property $ 
        forAll (listOf1 $ (fmap (\(x:xs) -> toUpper x : xs)) $ listOf1 $ choose ('a', 'z')) $ \xs ->
        length (words . solution . concat $ xs ) `shouldBe` length xs

    it "should not fail" $ do
      solution "WroaYUbvddFywj" `shouldBe` "Wroa Y Ubvdd Fywj"

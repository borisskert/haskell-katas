module Codewars.Kata.AlternatingCaseSpec (spec, main) where
import Codewars.Kata.AlternatingCase (toAlternatingCase)
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = describe "toAlternatingCase" $ do
  it "works for the examples" $ do
    toAlternatingCase "hello world" `shouldBe` "HELLO WORLD"
    toAlternatingCase "HELLO WORLD" `shouldBe` "hello world"
    toAlternatingCase "hello WORLD" `shouldBe` "HELLO world"
    toAlternatingCase "HeLLo WoRLD" `shouldBe` "hEllO wOrld"
    toAlternatingCase "12345"       `shouldBe` "12345"
    toAlternatingCase "1a2b3c4d5e"  `shouldBe` "1A2B3C4D5E"

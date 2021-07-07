module Codewars.Kata.ConvertSpec (spec) where
import Codewars.Kata.Convert (digitize)
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = describe "digitize" $ do
  it "works for 35231" $ digitize 35231 `shouldBe` [1,3,2,5,3]
  it "works for 0"     $ digitize 0 `shouldBe` [0]

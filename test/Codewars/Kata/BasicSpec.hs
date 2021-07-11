module Codewars.Kata.BasicSpec (spec, main) where
import Codewars.Kata.Basic
import Test.Hspec

main = hspec spec
spec = describe "values assigned correctly" $ do
  it "a" $ a `shouldBe` "code"
  it "b" $ b `shouldBe` "wa.rs"
  it "name" $ name `shouldBe` "codewa.rs"

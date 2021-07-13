module Codewars.Kata.HelloValidatorSpec where
import Test.Hspec
import Codewars.Kata.HelloValidator

spec :: Spec
spec = do
  it "Basic Example" $ do
    validateHello "hello" `shouldBe` True
    validateHello "foobar" `shouldBe` False
    validateHello "foo Hello bar" `shouldBe` True

main = hspec spec

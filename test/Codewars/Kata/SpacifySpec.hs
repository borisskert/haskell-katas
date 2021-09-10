module Codewars.Kata.SpacifySpec (spec) where

import Test.Hspec
import Codewars.Kata.Spacify (spacify)

spec :: Spec
spec = do
  it "basic tests" $ do
    spacify "abc" `shouldBe` "a b c"
    spacify "a"   `shouldBe` "a"
    spacify "a b" `shouldBe` "a   b"

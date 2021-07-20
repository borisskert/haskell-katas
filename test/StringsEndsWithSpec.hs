module StringsEndsWithSpec (spec) where

import Test.Hspec
import StringsEndsWith (solution)

spec :: Spec
spec = do
  it "example tests" $ do
    solution "abcde" "cde" `shouldBe` True
    solution "abcde" "abc" `shouldBe` False
    solution "abcde" "" `shouldBe` True

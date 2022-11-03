module AStringOfSortsSpec (spec) where

import AStringOfSorts (sortString)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sortString "foos" "of" `shouldBe` "oofs"
    sortString "string" "gnirts" `shouldBe` "gnirts"
    sortString "banana" "abn" `shouldBe` "aaabnn"
    sortString "banana" "xyz" `shouldBe` "banana"
    sortString "dfklzsinzpfonqv" "pdmvzdmj" `shouldBe` "pdvzzfklsinfonq"

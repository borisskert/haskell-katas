module MaybeConcatSpec (spec) where

import MaybeConcat (concatMaybe)
import Test.Hspec

spec =  do
  it "example tests" $ do
    concatMaybe (Just "Hello") (Just "World") `shouldBe` Just "Hello World"
    concatMaybe (Just "Hello") Nothing `shouldBe` Nothing
    concatMaybe Nothing (Just "World") `shouldBe` Nothing

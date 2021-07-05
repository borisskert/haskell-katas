module Haskell.Codewars.RemoveCharSpec where

import Test.Hspec
import Haskell.Codewars.RemoveChar

spec :: Spec
spec = do
    describe "Example Tests" $ do
        it "eloquent" $ removeChar "eloquent" `shouldBe` "loquen"
        it "country"  $ removeChar "country"  `shouldBe` "ountr"

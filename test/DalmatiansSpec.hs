module DalmatiansSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Dalmatians

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "howManyDalmatians" $ do
        it "howManyDalmatians" $ do
            howManyDalmatians 26 `shouldBe` "More than a handful!"
            howManyDalmatians 8 `shouldBe` "Hardly any"
            howManyDalmatians 14 `shouldBe` "More than a handful!"
            howManyDalmatians 80 `shouldBe` "Woah that's a lot of dogs!"
            howManyDalmatians 101 `shouldBe` "101 DALMATIONS!!!"

-- the following line is optional for 8.2
main = hspec spec
module CentreSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Centre

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "isInMiddle" $ do
        it "should test the examples" $ do
            (isInMiddle "AAabcBB") `shouldBe` True
            (isInMiddle "AabcBB") `shouldBe` True
            (isInMiddle "AabcBBB") `shouldBe` False
            (isInMiddle "abcBBB") `shouldBe` False
            (isInMiddle "AAAAabcBB") `shouldBe` False
            (isInMiddle "AAAAAabcB") `shouldBe` False
            (isInMiddle "Aabc") `shouldBe` True
            (isInMiddle "abcB") `shouldBe` True
            (isInMiddle "") `shouldBe` False
            (isInMiddle "a") `shouldBe` False
            (isInMiddle "ab") `shouldBe` False
            (isInMiddle "abc") `shouldBe` True
            (isInMiddle "AabcAAabcBBBBBB") `shouldBe` True
            (isInMiddle "AabcAAabcBBBBB") `shouldBe` True
            (isInMiddle "AabcAAabcBBBB") `shouldBe` False

-- the following line is optional for 8.2
main = hspec spec

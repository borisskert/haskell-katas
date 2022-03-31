module ShortLongShortSpec where

import Test.Hspec
import ShortLongShort

spec :: Spec
spec = do
    describe "Tests" $ do
        it "Fixed tests" $ do
            (shortLongShort "a" "bb") `shouldBe` "abba"
            (shortLongShort "45" "1") `shouldBe` "1451"
            (shortLongShort "&&%&&" "") `shouldBe` "&&%&&"
            (shortLongShort "" "Happy Days!") `shouldBe` "Happy Days!"
            (shortLongShort "Yes" "Yes!") `shouldBe` "YesYes!Yes"

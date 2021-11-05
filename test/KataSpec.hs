module KataSpec where
import Test.Hspec
import Test.QuickCheck
import Kata (highestValue)


spec :: Spec
spec = do
    describe "Example Tests" $ do
        it "should handle alphanumeric strings" $ do
            highestValue "AaBbCcXxYyZz0189" "KkLlMmNnOoPp4567" `shouldBe` "KkLlMmNnOoPp4567"
            highestValue "ABcd" "0123" `shouldBe` "ABcd"
        it "should handle non-alphanumeric ASCII" $
            highestValue "!\\\"?$%^&*()" "{}[]@~'#:;" `shouldBe` "{}[]@~'#:;"
        it "shoud handle ties" $
            highestValue "ABCD" "DCBA" `shouldBe` "ABCD"

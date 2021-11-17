module BoolToStringSpec where
import Test.Hspec
import BoolToString

spec :: Spec
spec = do
    describe "Tests" $ do
        it "Sample Tests" $ do
            (booleanToString True) `shouldBe` ("True" :: String)
            (booleanToString False) `shouldBe` ("False" :: String)
main = hspec spec

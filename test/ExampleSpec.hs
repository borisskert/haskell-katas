module ExampleSpec where

import Test.Hspec
import Kata (sayHello)

spec :: Spec
spec = do
    describe "Sample Tests" $ do
        it "Basic tests" $ do
            (sayHello "Mr.Spock") `shouldBe` ("Hello, Mr.Spock" :: String)
            (sayHello "Captain Kirk") `shouldBe` ("Hello, Captain Kirk")
            (sayHello "Liutenant Uhura") `shouldBe` ("Hello, Liutenant Uhura")

main = hspec spec

module MakeUpperSpec (spec) where

import Test.Hspec
import MakeUpper (makeUpperCase)

spec :: Spec
spec = do
  it "basic tests" $ do
    makeUpperCase "hello" `shouldBe` "HELLO"
    makeUpperCase "hello world" `shouldBe` "HELLO WORLD"
    makeUpperCase "hello world !" `shouldBe` "HELLO WORLD !"
    makeUpperCase "1,2,3 hello world" `shouldBe` "1,2,3 HELLO WORLD"

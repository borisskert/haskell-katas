module ChangeItUpSpec (spec) where

import ChangeItUp (change)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    change "Cat30" `shouldBe` "dbU30"
    change "Alice" `shouldBe` "bmjdf"
    change "sponge1" `shouldBe` "tqpOhf1"
    change "Hello World" `shouldBe` "Ifmmp xpsmE"
    change "dogs" `shouldBe` "Epht"
    change "z" `shouldBe` "A"
    change "sf<wp\\~YjN@n" `shouldBe` "tg<xq\\~zkO@O"

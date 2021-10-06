module BorrowSpec where

import Test.Hspec
import Borrow

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    borrow "WhAt! FiCK! DaMn CAke?" `shouldBe` "whatfickdamncake"
    borrow "THE big PeOpLE Here!!" `shouldBe` "thebigpeoplehere"
    borrow "i AM a TINY BoY!!"`shouldBe` "iamatinyboy"
    borrow "DOnt YOU SAY THAT!" `shouldBe` "dontyousaythat"
    borrow "borrow BORROW BoRrOw IT!?" `shouldBe` "borrowborrowborrowit"
    borrow "\20002" `shouldBe` ""
  

-- the following line is optional for 8.2
main = hspec spec

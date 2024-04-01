module SlotMachineSpec (spec) where

import SlotMachine (slot)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    slot "!!!!!" `shouldBe` 1000
    slot "!!!!?" `shouldBe` 800
    slot "!!!??" `shouldBe` 500
    slot "!!!?!" `shouldBe` 300
    slot "!!?!!" `shouldBe` 200
    slot "!!?!?" `shouldBe` 100
    slot "!?!?!" `shouldBe` 0

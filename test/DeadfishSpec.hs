module DeadfishSpec (spec) where

import Kata.Deadfish (parse)
import Test.Hspec

spec = do
  it "Example test" $ do
    parse "iiisdoso" `shouldBe` [ 8, 64 ]
    parse "iY" `shouldBe` []

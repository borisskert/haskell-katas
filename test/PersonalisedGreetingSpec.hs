module PersonalisedGreetingSpec (spec) where

import PersonalisedGreeting (greet)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    greet "Daniel" "Daniel" `shouldBe` "Hello boss"
    greet "Greg" "Daniel" `shouldBe` "Hello guest"

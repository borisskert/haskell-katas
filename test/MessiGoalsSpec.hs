module MessiGoalsSpec where

import Test.Hspec
import MessiGoals

spec :: Spec
spec = do
  it "fixed tests" $ do
    goals 0 0 0 `shouldBe` 0
    goals 43 10 5 `shouldBe` 58

main = hspec spec

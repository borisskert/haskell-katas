module PlaneSeatSpec (spec) where

import Test.Hspec
import PlaneSeat (planeSeat)

spec :: Spec
spec = do
  it "Basic tests" $ do
    planeSeat "2B" `shouldBe` "Front-Left"
    planeSeat "20B" `shouldBe` "Front-Left"
    planeSeat "58I" `shouldBe` "No Seat!!"
    planeSeat "60D" `shouldBe` "Back-Middle"
    planeSeat "17K" `shouldBe` "Front-Right"
    planeSeat "26J" `shouldBe` "No Seat!!"
    planeSeat "3H" `shouldBe` "Front-Right"

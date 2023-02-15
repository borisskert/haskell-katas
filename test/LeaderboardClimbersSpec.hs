module LeaderboardClimbersSpec (spec) where

import LeaderboardClimbers (leaderboardSort)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    leaderboardSort ["John", "Brian", "Jim", "Dave", "Fred"] ["Dave +1", "Fred +4", "Brian -1"] `shouldBe` ["Fred", "John", "Dave", "Brian", "Jim"]
    leaderboardSort ["Bob", "Larry", "Kevin", "Jack", "Max"] ["Max +3", "Kevin -1", "Kevin +3"] `shouldBe` ["Bob", "Kevin", "Max", "Larry", "Jack"]

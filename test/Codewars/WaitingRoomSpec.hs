module Codewars.WaitingRoomSpec where
import Codewars.WaitingRoom
import Test.Hspec

spec :: Spec
spec = do
  describe "lastChair" $ do
    it "should return the last patient's chair number" $ do
      lastChair 10 `shouldBe` 9

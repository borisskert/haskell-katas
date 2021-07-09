module BanjoSpec where
import Banjo
import Test.Hspec

spec :: Spec
spec = do
  describe "Uppercase Tests" $ do
    it "Plays banjo..." $ do
      areYouPlayingBanjo "Ringo" `shouldBe` "Ringo plays banjo"
    it "Doesn't play banjo..." $ do
      areYouPlayingBanjo "Adam" `shouldBe` "Adam does not play banjo"
      areYouPlayingBanjo "Paul" `shouldBe` "Paul does not play banjo"
  describe "Lowercase Tests" $ do
    it "Plays banjo..." $ do
      areYouPlayingBanjo "rolf" `shouldBe` "rolf plays banjo"
    it "Doesn't play banjo..." $ do
      areYouPlayingBanjo "bravo" `shouldBe` "bravo does not play banjo"

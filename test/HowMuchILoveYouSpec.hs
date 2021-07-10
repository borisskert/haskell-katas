module HowMuchILoveYouSpec where
import HowMuchILoveYou (howMuchILoveYou)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      howMuchILoveYou 1 `shouldBe` "I love you"
      howMuchILoveYou 2 `shouldBe` "a little"
      howMuchILoveYou 3 `shouldBe` "a lot"
      howMuchILoveYou 4 `shouldBe` "passionately"
      howMuchILoveYou 5 `shouldBe` "madly"
      howMuchILoveYou 6 `shouldBe` "not at all"
      howMuchILoveYou 7 `shouldBe` "I love you"
      howMuchILoveYou 8 `shouldBe` "a little"
      howMuchILoveYou 9 `shouldBe` "a lot"

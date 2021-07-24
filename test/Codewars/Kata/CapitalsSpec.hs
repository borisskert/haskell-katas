module Codewars.Kata.CapitalsSpec where
import Codewars.Kata.Capitals (capitals)
import Test.Hspec

spec :: Spec
spec = do
  describe "capitals" $ do
    it "should work for some small examples" $ do
      capitals ""         `shouldBe` []
      capitals "CodEWaRs" `shouldBe` [0,3,4,6]
      capitals "aAbB"     `shouldBe` [1,3]
      capitals "4ysdf4"   `shouldBe` []
      capitals "ABCDEF"   `shouldBe` [0..5]

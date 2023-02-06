module HanoiSpec where
import Hanoi
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "hanoi" $ do 
    it "hanoi 0 should return 0" $ do
      hanoi 0 `shouldBe` 0

    it "hanoi 5 should return 31" $ do
      hanoi 5 `shouldBe` 31

    it "hanoi 100 should return 1267650600228229401496703205375" $ do
      hanoi 100 `shouldBe` 1267650600228229401496703205375

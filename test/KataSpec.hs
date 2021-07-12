module KataSpec where
import Kata (isOpposite)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "it should work with example tests" $ do
        isOpposite "ab" "AB"      `shouldBe` True
        isOpposite "aB" "Ab"      `shouldBe` True
        isOpposite "aBcd" "AbCD"  `shouldBe` True
        isOpposite "aBcde" "AbCD" `shouldBe` False
        isOpposite "AB" "Ab"      `shouldBe` False
        isOpposite "" ""          `shouldBe` False

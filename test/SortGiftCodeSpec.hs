module SortGiftCodeSpec where
import SortGiftCode (sortGiftCode)
import Test.Hspec

spec :: Spec
spec = do
  describe "sortGiftCode" $ do
    it "should work on the examples" $ do
      sortGiftCode "abcdef"                     `shouldBe` "abcdef"
      sortGiftCode "pqksuvy"                    `shouldBe` "kpqsuvy"
      sortGiftCode "zyxwvutsrqponmlkjihgfedcba" `shouldBe` "abcdefghijklmnopqrstuvwxyz"

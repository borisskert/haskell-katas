module SimpleRotatedPalinSpec where
import SimpleRotatedPalin
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple rotated palindromes" $ do
    it "Basic tests" $ do
      solve "aaab" `shouldBe` False
      solve "abcabc" `shouldBe` False
      solve "4455" `shouldBe` True
      solve "zazcbaabc" `shouldBe` True
      solve "223456776543" `shouldBe` True
      solve "432612345665" `shouldBe` False
      solve "qponmlkjihgfeeiefghijklmnopqrsttsr" `shouldBe` False
      solve "iji" `shouldBe` True
      solve "jjq" `shouldBe` True
      solve "pvvp" `shouldBe` True
      solve "" `shouldBe` True

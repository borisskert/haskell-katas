module SingleCharPalinsSpec where
import SingleCharPalins
import Test.Hspec

spec :: Spec
spec = do
  describe "Single Character Palindromes" $ do
    it "Basic tests" $ do
      solve "abba" `shouldBe` "OK"
      solve "abbaa" `shouldBe` "remove one"
      solve "abbaab" `shouldBe` "not possible"
      solve "madmam" `shouldBe` "remove one"
      solve "raydarm" `shouldBe` "not possible"
      solve "hannah" `shouldBe` "OK"

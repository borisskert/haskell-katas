module KataSpec where
import Kata
import Test.Hspec

spec :: Spec
spec = do
  describe "Longest vowel chain" $ do
    it "Basic tests" $ do
      solve "codewarriors" `shouldBe` 2
      solve "suoidea" `shouldBe` 3
      solve "ultrarevolutionariees" `shouldBe` 3
      solve "strengthlessnesses" `shouldBe` 1
      solve "cuboideonavicuare" `shouldBe` 2
      solve "chrononhotonthuooaos" `shouldBe` 5
      solve "iiihoovaeaaaoougjyaw" `shouldBe` 8

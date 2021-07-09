module NeedSpec where

import Test.Hspec
import Need

spec :: Spec
spec = do
  describe "check" $ do
    it "handles fixed cases" $ do
      check [66, 101]  66 `shouldBe` True
      check [78, 117, 110, 99, 104, 117, 107, 115]  8 `shouldBe` False
      check [101, 45, 75, 105, 99, 107]  107 `shouldBe` True
      check ["t", "e", "s", "t"]  "e" `shouldBe` True
      check ["what", "a", "great", "kata"]  "kat" `shouldBe` False
      check ["codewars", "alex loves pushups"]  "alex loves pushups" `shouldBe` True
      check ["come", "on", "2500", "!"]  "Come" `shouldBe` False
      check ["when's", "the", "next", "Katathon?"]  "Katathon?" `shouldBe` True
      check ["bored", "of", "writing", "tests"]  "alex"  `shouldBe` False
      check ["anyone", "want", "to", "hire", "me?"]  "me?" `shouldBe` True
  
-- the following line is optional for 8.2
main = hspec spec

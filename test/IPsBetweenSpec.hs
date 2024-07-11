module IPsBetweenSpec where

import IPsBetween
import Test.Hspec

spec :: Spec
spec = do
  describe "ipsBetween" $ do
    it "basic" $ do
      ipsBetween "10.0.0.0" "10.0.0.50" `shouldBe` 50
      ipsBetween "20.0.0.10" "20.0.1.0" `shouldBe` 246
      ipsBetween "150.0.0.0" "150.0.0.1" `shouldBe` 1
      ipsBetween "10.0.0.0" "10.0.0.50" `shouldBe` 50
      ipsBetween "20.0.0.10" "20.0.1.0" `shouldBe` 246
      ipsBetween "10.11.12.13" "10.11.13.0" `shouldBe` 243
      ipsBetween "160.0.0.0" "160.0.1.0" `shouldBe` 256
      ipsBetween "170.0.0.0" "170.1.0.0" `shouldBe` 65536
      ipsBetween "50.0.0.0" "50.1.1.1" `shouldBe` 65793
      ipsBetween "180.0.0.0" "181.0.0.0" `shouldBe` 16777216
      ipsBetween "1.2.3.4" "5.6.7.8" `shouldBe` 67372036
      ipsBetween "64.97.5.54" "58.130.224.47" `shouldBe` (-98444551)
      ipsBetween "64.0.0.0" "58.0.0.0" `shouldBe` (-100663296)
      ipsBetween "0.97.0.0" "0.130.0.0" `shouldBe` 2162688
      ipsBetween "0.0.5.0" "0.0.244.0" `shouldBe` 61184
      ipsBetween "0.3.0.4" "0.1.0.1" `shouldBe` (-131075)
      ipsBetween "0.0.0.0" "1.1.1.1" `shouldBe` (16777216 + 65536 + 256 + 1)
      ipsBetween "1.1.1.1" "0.0.0.0" `shouldBe` -(16777216 + 65536 + 256 + 1)

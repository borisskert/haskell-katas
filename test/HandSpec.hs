module HandSpec where

import Test.Hspec
import Hand

spec :: Spec
spec = do
  it "handles a few fixed cases " $ do
    getParticipants 0 `shouldBe` 0
    getParticipants 1 `shouldBe` 2
    getParticipants 3 `shouldBe` 3
    getParticipants 6 `shouldBe` 4
    getParticipants 9 `shouldBe` 5
    getParticipants 178 `shouldBe` 20
    getParticipants 220 `shouldBe` 22
    getParticipants 224 `shouldBe` 22
    getParticipants 237 `shouldBe` 23
    getParticipants 319 `shouldBe` 26
    getParticipants 354 `shouldBe` 28
    getParticipants 418 `shouldBe` 30
    getParticipants 421 `shouldBe` 30
    getParticipants 473 `shouldBe` 32
    getParticipants 475 `shouldBe` 32
    getParticipants 496 `shouldBe` 32
    getParticipants 627 `shouldBe` 36
    getParticipants 639 `shouldBe` 37
    getParticipants 852 `shouldBe` 42
    getParticipants 994 `shouldBe` 46

-- the following line is optional for 8.2
main = hspec spec

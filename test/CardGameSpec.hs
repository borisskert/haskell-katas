module CardGameSpec where

import CardGame (cardGame)
import Test.Hspec (Spec, hspec, it, shouldBe)

spec :: Spec
spec = do
  it "should return the maximum number of cards Alice can collect" $ do
    cardGame 0 `shouldBe` 0
    cardGame 1 `shouldBe` 1
    cardGame 2 `shouldBe` 1
    cardGame 3 `shouldBe` 2
    cardGame 4 `shouldBe` 3
    cardGame 5 `shouldBe` 2
    cardGame 6 `shouldBe` 4
    cardGame 7 `shouldBe` 3
    cardGame 8 `shouldBe` 5
    cardGame 9 `shouldBe` 4
    cardGame 10 `shouldBe` 8
    cardGame 11 `shouldBe` 3
    cardGame 12 `shouldBe` 9
    cardGame 13 `shouldBe` 4
    cardGame 14 `shouldBe` 11
    cardGame 15 `shouldBe` 4
    cardGame 16 `shouldBe` 12
    cardGame 17 `shouldBe` 5
    cardGame 18 `shouldBe` 14
    cardGame 19 `shouldBe` 5
    cardGame 20 `shouldBe` 15
    cardGame 21 `shouldBe` 6
    cardGame 22 `shouldBe` 19
    cardGame 23 `shouldBe` 4
    cardGame 24 `shouldBe` 20
    cardGame 25 `shouldBe` 5
    cardGame 26 `shouldBe` 22
    cardGame 28 `shouldBe` 23
    cardGame 30 `shouldBe` 26
    cardGame 31 `shouldBe` 5
    cardGame 32 `shouldBe` 27
    cardGame 33 `shouldBe` 6
    cardGame 34 `shouldBe` 29
    cardGame 35 `shouldBe` 6
    cardGame 36 `shouldBe` 30
    cardGame 38 `shouldBe` 33
    cardGame 39 `shouldBe` 6
    cardGame 40 `shouldBe` 34
    cardGame 41 `shouldBe` 7
    cardGame 42 `shouldBe` 36
    cardGame 43 `shouldBe` 7
    cardGame 44 `shouldBe` 37
    cardGame 46 `shouldBe` 42
    cardGame 47 `shouldBe` 5
    cardGame 48 `shouldBe` 43
    cardGame 64 `shouldBe` 58
    cardGame 96 `shouldBe` 90
    cardGame 98 `shouldBe` 92
    cardGame 100 `shouldBe` 93
    cardGame 100000000000 `shouldBe` 99999999950

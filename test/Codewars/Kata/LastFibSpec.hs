module Codewars.Kata.LastFibSpec where

import Codewars.Kata.LastFib (lastFibDigit)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "lastFibDigit" $ do
    context "static tests" $ do
      given 0 returns 0
      given 1 returns 1
      given 2 returns 1
      given 3 returns 2
      given 4 returns 3
      given 5 returns 5
      given 6 returns 8
      given 7 returns 3
      given 8 returns 1
      given 9 returns 4
      given 10 returns 5
      given 11 returns 9
      given 12 returns 4
      given 13 returns 3
      given 14 returns 7
      given 15 returns 0
      given 16 returns 7
      given 17 returns 7
      given 18 returns 4
      given 19 returns 1
      given 20 returns 5
      given 21 returns 6
      given 22 returns 1
      given 23 returns 7
      given 24 returns 8
      given 25 returns 5
      given 26 returns 3
      given 27 returns 8
      given 28 returns 1
      given 29 returns 9
      given 30 returns 0
      given 31 returns 9
      given 32 returns 9
      given 33 returns 8
      given 34 returns 7
      given 35 returns 5
      given 36 returns 2
      given 37 returns 7
      given 38 returns 9
      given 39 returns 6
      given 40 returns 5
      given 41 returns 1
      given 42 returns 6
      given 43 returns 7
      given 44 returns 3
      given 45 returns 0
      given 46 returns 3
      given 47 returns 3
      given 48 returns 6
      given 49 returns 9
      given 50 returns 5
      given 51 returns 4
      given 52 returns 9
      given 53 returns 3
      given 54 returns 2
      given 55 returns 5
      given 56 returns 7
      given 57 returns 2
      given 58 returns 9
      given 59 returns 1
      given 60 returns 0
      given 61 returns 1
      given 62 returns 1
      given 63 returns 2
      given 302 returns 1
      given 1000000009 returns 9

    context "random tests" $
      it "doesn't timeout on large numbers" $
        property $
          forAll (choose (10 ^ 300, 10 ^ 1000)) $ \x ->
            lastFibDigit x `shouldSatisfy` (\n -> 0 <= n && n < 10)
  where
    returns = undefined
    given a _ c = it (concat ["returns ", show c, " on ", show a]) $ lastFibDigit a `shouldBe` c

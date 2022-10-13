module CasinoChipsSpec (spec) where

import CasinoChips (solve)
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    solve [1, 1, 1] `shouldBe` 1
    solve [1, 2, 1] `shouldBe` 2
    solve [4, 1, 1] `shouldBe` 2
    solve [4, 5, 8] `shouldBe` 8
    solve [8, 2, 8] `shouldBe` 9
    solve [8, 1, 4] `shouldBe` 5
    solve [7, 4, 10] `shouldBe` 10
    solve [12, 12, 12] `shouldBe` 18
    solve [1, 23, 2] `shouldBe` 3
    solve [283444, 679735, 171258] `shouldBe` 454702

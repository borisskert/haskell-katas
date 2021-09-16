module KataSpec where

import Test.Hspec
import Kata (burner)

spec :: Spec
spec = do
  it "Fixed tests" $ do
    burner 45 11 100 `shouldBe` (5, 45, 0)
    burner 354 1023230 0 `shouldBe` (0, 0, 354)
    burner 939 3 694 `shouldBe` (1, 346, 0)
    burner 215 41 82100 `shouldBe` (20, 215, 0)
    burner 113 0 52 `shouldBe` (0, 26, 0)
    burner 2 327 425 `shouldBe` (163, 2, 0)
    burner 158 455 35 `shouldBe` (35, 0, 96)

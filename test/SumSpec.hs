module SumSpec where

import Sum
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the sequence sum " $ do
--    sequenceSum 1 5 1 `shouldBe` 15
--    sequenceSum 2 6 1 `shouldBe` 20
--    sequenceSum 2 6 2 `shouldBe` 12 -- 2 4 6
--    sequenceSum 1 5 2 `shouldBe` 9 -- 1 3 5
--    sequenceSum 1 5 3 `shouldBe` 5  -- 1 4
--    sequenceSum 1 5 4 `shouldBe` 6  -- 1 5
--    sequenceSum 2 14 1 `shouldBe` 104  -- 2 3 4 5 6 7 8 9 10 11 12 13 14
--    sequenceSum 2 14 2 `shouldBe` 56  -- 2 4 6 8 10 12 14
--    sequenceSum 2 14 3 `shouldBe` 40  -- 2 5 8 11 14
--    sequenceSum 2 14 6 `shouldBe` 24  -- 2 8 14
--    sequenceSum 2 8 2 `shouldBe` 20  -- 2 4 6 8
--    sequenceSum 8 8 (-5) `shouldBe` 8
--    sequenceSum (-4) 0 (-1) `shouldBe` 0
--    sequenceSum (-1) (-5) (-3) `shouldBe` (-5)
--    sequenceSum 16 15 3 `shouldBe` 0
--    sequenceSum (-24) (-2) 22 `shouldBe` (-26)
--    sequenceSum (-2) 4 658 `shouldBe` (-2)
    sequenceSum 1 (-3) (-1) `shouldBe` (-5)
    sequenceSum 8 (-7) (-13) `shouldBe` 3 -- 8 5 2 | -1 -4 -7 => 15 - 12
    sequenceSum 9383 71418 2 `shouldBe` 1253127200
    sequenceSum 20 67338879730 5 `shouldBe` 453452472362809927125
    sequenceSum 780 68515438 5 `shouldBe` 469436517521190

-- the following line is optional for 8.2
main = hspec spec

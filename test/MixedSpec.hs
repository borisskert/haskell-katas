module MixedSpec where

import Test.Hspec
import Mixed

spec :: Spec
spec = do
  describe "sumMix" $ do
    it "works on a few fixed cases" $ do
      sumMix [Right 9, Right 3, Left "7", Left "3"] `shouldBe` 22
      sumMix [Left "5", Left "0", Right 9, Right 3, Right 2, Right 1, Left "9", Right 6, Right 7] `shouldBe` 42
      sumMix [Left "3", Right 6, Right 6, Right 0, Left "5", Right 8, Right 5, Left "6", Right 2,Left "0"] `shouldBe` 41
      sumMix [Left "1", Left "5", Left "8", Right 8, Right 9, Right 9, Right 2, Left "3"] `shouldBe` 45
      sumMix [Right 8, Right 0, Right 0, Right 8, Right 5, Right 7, Right 2, Right 3, Right 7, Right 8, Right 6, Right 7] `shouldBe` 61

-- the following line is optional for 8.2
main = hspec spec

module PlentyOfFishInThePond.TestsSpec (spec) where

import PlentyOfFishInThePond.Kata (fish)
import Test.Hspec

spec :: Spec
spec = do
  describe "Plenty of Fish in the Pond" $ do
    it "Example Tests" $ do
      fish "" `shouldBe` 1
      fish "0" `shouldBe` 1
      fish "6" `shouldBe` 1
      fish "1111" `shouldBe` 2
      fish "11112222" `shouldBe` 3
      fish "111122223333" `shouldBe` 4
      fish "111111111111" `shouldBe` 3
      fish "111111111111111111112222222222" `shouldBe` 5
      fish "151128241212192113722321331" `shouldBe` 5

--    151128241212192113722321331
-- 1: 1 11    1
-- 2:          2121 2
-- 3:                113 223
-- 4:                       21331
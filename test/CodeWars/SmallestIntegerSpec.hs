module CodeWars.SmallestIntegerSpec where

import CodeWars.SmallestInteger
import Test.Hspec

spec :: Spec
spec = do
    describe "smallestInteger" $ do
      it "should work for some examples" $ do
        findSmallestInteger [78, 56, 232, 12, 11, 43] `shouldBe` 11
        findSmallestInteger [78, 56, -2, 12, 8, -33]  `shouldBe` -33

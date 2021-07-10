module DutyfreeSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Dutyfree

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "gets the number of bottles" $ do
        it "a few checks" $ do
          dutyFree 12  50  1000 `shouldBe` 166
          dutyFree 17  10  500 `shouldBe` 294
          dutyFree 24  35  3000 `shouldBe` 357
          dutyFree 1400  35  10000 `shouldBe` 20
          dutyFree 700  26  7000 `shouldBe` 38
       
-- the following line is optional for 8.2
main = hspec spec

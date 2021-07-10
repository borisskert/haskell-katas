module BlockSeatsSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import BlockSeats

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "calculates the blocked seats" $ do
        it "for some statics" $ do
            seatsBlocked 16 11 5 3 `shouldBe` 96
            seatsBlocked 1 1 1 1 `shouldBe` 0
            seatsBlocked 13 6 8 3 `shouldBe` 18

-- the following line is optional for 8.2
main = hspec spec

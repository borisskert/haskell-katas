module HealthSpec where

import Test.Hspec
import Health

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "grasshopper" $ do
        it "works on simple numbers" $ do
            (updateHealth 2 1) `shouldBe` (1)
        it "handles the zero case" $ do
            (updateHealth 5 10) `shouldBe` (0)

-- the following line is optional for 8.2
main = hspec spec

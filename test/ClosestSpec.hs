module ClosestSpec where

import Test.Hspec
import Closest

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    closestMultiple10 54 `shouldBe` 50
    closestMultiple10 67 `shouldBe` 70
    closestMultiple10 4885 `shouldBe` 4890

-- the following line is optional for 8.2
main = hspec spec

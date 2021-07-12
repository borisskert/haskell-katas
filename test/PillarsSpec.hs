module PillarsSpec where

import Test.Hspec
import Pillars

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    pillars 1  10  10  `shouldBe` 0
    pillars 2  20  25  `shouldBe` 2000
    pillars 11 15  30  `shouldBe` 15270 

-- the following line is optional for 8.2
main = hspec spec

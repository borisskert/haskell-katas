module SurviveSpec where

import Test.Hspec
import Survive

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    hero 10 5 `shouldBe` True
    hero 7  4 `shouldBe` False
    hero 4  5 `shouldBe` False
    hero 100  40 `shouldBe` True
    hero 1500  751 `shouldBe` False
    hero 0  1 `shouldBe` False
  
-- the following line is optional for 8.2
main = hspec spec

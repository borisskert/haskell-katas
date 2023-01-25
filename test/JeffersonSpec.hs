module JeffersonSpec where

import Jefferson
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    shortestArrang 10 `shouldBe` [4, 3, 2, 1]
    shortestArrang 14 `shouldBe` [5, 4, 3, 2]
    shortestArrang 16 `shouldBe` [-1]
    shortestArrang 22 `shouldBe` [7, 6, 5, 4]
    shortestArrang 65 `shouldBe` [33, 32]

-- the following line is optional for 8.2
main = hspec spec

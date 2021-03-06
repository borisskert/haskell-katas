module CakeSpec where

import Test.Hspec
import Cake

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    cakeSlice 0 `shouldBe` 1
    cakeSlice 1 `shouldBe` 2
    cakeSlice 2 `shouldBe` 4
    cakeSlice 3 `shouldBe` 7
    cakeSlice 10 `shouldBe` 56
    cakeSlice 2879 `shouldBe` 4145761
    cakeSlice 7021 `shouldBe` 24650732
    
-- the following line is optional for 8.2
main = hspec spec

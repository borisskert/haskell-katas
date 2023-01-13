module UnsortedSpec where

import Test.Hspec
import Test.QuickCheck
import Unsorted

spec :: Spec
spec = do
  it "finds the duplicate numbers" $ do
    findDup [1,1,2,3]           `shouldBe` 1
    findDup [1,2,2,3]           `shouldBe` 2
    findDup [5,4,3,2,1,1]       `shouldBe` 1
    findDup [1,3,2,5,4,5,7,6]   `shouldBe` 5
    findDup [8,2,6,3,7,2,5,1,4] `shouldBe` 2 

module AllNonConsecutiveSpec (spec) where

import AllNonConsecutive (allNonConsecutive)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    allNonConsecutive [1,2,3,4,6,7,8,10] `shouldBe` [(4,6),(7,10)]
    allNonConsecutive [6,7,8,9,10,11,13,15] `shouldBe` [(6,13),(7,15)]
  it "empty" $ do
    allNonConsecutive [] `shouldBe` []

module BaumSweetSpec (spec) where

import BaumSweet
import Test.Hspec

spec :: Spec
spec = do
  describe "sequence" $ do
    it "20 elements" $ take 20 baumSweet `shouldBe` [1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1]
    it "32 elements" $ take 32 baumSweet `shouldBe` [
        1, 1, 
              0, 1,
                    1, 0, 0, 1,
                                0, 1, 0, 0, 1, 0, 0, 1,
                                                        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1]

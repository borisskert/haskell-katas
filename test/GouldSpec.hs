module GouldSpec (spec) where

import Gould (gould)
import Test.Hspec

spec :: Spec
spec = do
  describe "sequence" $ do
    it "20 elements" $ take 20 gould `shouldBe` [0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3]

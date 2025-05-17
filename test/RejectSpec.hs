module RejectSpec (spec) where

import Reject (reject)
import Test.Hspec

spec :: Spec
spec = do
  it "example test" $ do
    reject even [1 .. 6] `shouldBe` [1, 3, 5]

module FirstNonConsecutiveSpec (spec) where

import FirstNonConsecutive (firstNonConsecutive)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    firstNonConsecutive [1,2,3,4,6,7,8] `shouldBe` Just 6

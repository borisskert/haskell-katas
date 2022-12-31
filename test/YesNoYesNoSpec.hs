module YesNoYesNoSpec (spec) where

import YesNoYesNo (yesNo)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    yesNo [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] `shouldBe` [ 1, 3, 5, 7, 9, 2, 6, 10, 8, 4 ]
    yesNo ["this", "code", "is", "right", "the"] `shouldBe` [ "this", "is", "the", "right", "code" ]

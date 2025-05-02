module ValidationSpec where

import Test.HUnit
import Test.Hspec
import Validation (validateEAN)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works for some examples" $ do
      assertEqual "9783815820865" True $
        validateEAN "9783815820865"
      assertEqual "9783815820864" False $
        validateEAN "9783815820864"
      assertEqual "9783827317100" True $
        validateEAN "9783827317100"

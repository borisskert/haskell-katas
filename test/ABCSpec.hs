module ABCSpec where

import ABC
import Test.Hspec

spec :: Spec
spec = do
  describe "alphabetize" $ do
    it "testing 'bca'" $ shouldBe (alphabetize "bca") "abc"

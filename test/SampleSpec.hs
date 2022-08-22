module SampleSpec where

import Solution
import Test.Hspec (Spec, describe, it, shouldBe)
import Prelude (Bool (..), ($), (&&))

spec :: Spec
spec = do
  describe "OmniBool" $ do
    it "always compares with True" $ do
      omniBool == True `shouldBe` True
      omniBool == False `shouldBe` True
    it "and" $ do
      omniBool == True && omniBool == False `shouldBe` True

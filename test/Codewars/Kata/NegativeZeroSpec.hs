module Codewars.Kata.NegativeZeroSpec where

import Codewars.Kata.NegativeZero as User (isNegativeZero)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isNegativeZero" $ do
    it "returns False on NonZero values" $
      property $ \(NonZero x) ->
        User.isNegativeZero x `shouldBe` False

    it "returns False on 0" $
      User.isNegativeZero 0 `shouldBe` False

    it "returns True on -0" $
      User.isNegativeZero (-0) `shouldBe` True

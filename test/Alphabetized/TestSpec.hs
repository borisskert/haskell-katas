module Alphabetized.TestSpec (spec) where

import Test.Hspec
import Alphabetized.Kata (alphabetized)

spec :: Spec
spec = do
  describe "Alphabetized" $ do
    it "Example test" $ do
      alphabetized "The Holy Bible" `shouldBe` "BbeehHilloTy"

module Ch02.BesideSpec where

import Test.Hspec

import Ch02.Beside.Nat
import Ch02.Beside (beside, besideN)

spec :: Spec
spec = do
  describe "beside some tests" $ do
    it "one vs zero" $ do
      beside (Succ Z) Z `shouldBe` True    
      beside Z (Succ Z) `shouldBe` True

    it "zero vs zero" $ do
      beside Z Z `shouldBe` False

    it "one vs two" $ do
      beside one two `shouldBe` True
      beside two one `shouldBe` True

    it "zero vs two" $ do
      beside Z two `shouldBe` False
      beside two Z `shouldBe` False

  describe "besideN some tests" $ do
    it "besideN two Z two = True" $ do
      besideN two Z two `shouldBe` True
      besideN two two Z `shouldBe` True

    it "besideN two one two = False" $ do
      besideN two one two `shouldBe` False
      besideN two two one `shouldBe` False

one = Succ Z
two = Succ (Succ Z)

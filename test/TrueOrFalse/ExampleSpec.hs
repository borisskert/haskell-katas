module TrueOrFalse.ExampleSpec where

import Prelude hiding (Bool (..), (&&), (||), not, otherwise)

import TrueOrFalse ((&&), (||), not, otherwise, bool)
import TrueOrFalse.Prelude (Bool (..))

import Test.Hspec
import Test.QuickCheck
import Test.Hspec.Codewars

spec :: Spec
spec = do
  describe "basics" $ do
    it "&&" $ do
      True && True `shouldBe` True
      True && False `shouldBe` False
      False && True `shouldBe` False
      False && False `shouldBe` False
    it "||" $ do
      True || True `shouldBe` True
      True || False `shouldBe` True
      False || True `shouldBe` True
      False || False `shouldBe` False
    it "not" $ do
      not True `shouldBe` False
      not False `shouldBe` True
    it "otherwise" $ do
      otherwise `shouldBe` True
    it "bool" $ do
      bool 0 1 True `shouldBe` 1
      bool 0 1 False `shouldBe` 0
  describe "should not use built-ins" $ do
    it "Prelude.Bool" $ moduleShouldHideAll [FromModule "Prelude" "Bool"] "src/TrueOrFalse.hs"
    it "Prelude.&&" $ moduleShouldHideAll [FromModule "Prelude" "&&"] "src/TrueOrFalse.hs"
    it "Prelude.||" $ moduleShouldHideAll [FromModule "Prelude" "||"] "src/TrueOrFalse.hs"
    it "Prelude.not" $ moduleShouldHideAll [FromModule "Prelude" "not"] "src/TrueOrFalse.hs"
    it "Prelude.otherwise" $ moduleShouldHideAll [FromModule "Prelude" "otherwise"] "src/TrueOrFalse.hs"
    it "Data.Bool" $ moduleShouldHideAll [Module "Data.Bool"] "src/TrueOrFalse.hs"

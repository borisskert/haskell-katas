module SimpleDivSpec where

import SimpleDiv
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple division" $ do
    it "Basic tests" $ do
      solve 2 256 `shouldBe` True
      solve 2 253 `shouldBe` False
      solve 9 243 `shouldBe` True
      solve 15 12 `shouldBe` False
      solve 21 2893401 `shouldBe` True
      solve 21 2893406 `shouldBe` False
      solve 54 2834352 `shouldBe` True
      solve 54 2834359 `shouldBe` False
      solve 1000013 7187761 `shouldBe` True
      solve 1000013 7187762 `shouldBe` False

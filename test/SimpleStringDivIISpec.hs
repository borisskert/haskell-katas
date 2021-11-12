module SimpleStringDivIISpec where
import SimpleStringDivII
import Test.Hspec

spec = do
  describe "Simple string division II" $ do
    it "Basic tests" $ do
      solve "1 2 36 4 8" 2 `shouldBe` 16
      solve "1 2 36 4 8" 3 `shouldBe` 8
      solve "1 2 36 4 8" 4 `shouldBe` 11
      solve "1 2 36 4 8" 8 `shouldBe` 4
      solve "1 3 6 3" 3 `shouldBe` 6
    --   solve "61 55 29 87 38 33 30 42 83 92 93 38 33 55 35 2 84 68 98 28 72 82 75 24 71" 74 `shouldBe` 89

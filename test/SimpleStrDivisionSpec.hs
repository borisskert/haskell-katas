module SimpleStrDivisionSpec where
import SimpleStrDivision
import Test.Hspec

spec = do
  describe "Simple string division" $ do
    it "Basic tests" $ do
      solve "123" 1 `shouldBe` 23
      solve "1234" 1 `shouldBe` 234
      solve "1234" 2 `shouldBe` 34
      solve "1234" 3 `shouldBe` 4
      solve "86159414983" 8 `shouldBe` 983
      solve "86068599653" 8 `shouldBe` 996
      solve "26925626506" 0 `shouldBe` 26925626506

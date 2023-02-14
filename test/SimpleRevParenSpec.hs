module SimpleRevParenSpec where
import SimpleRevParen
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple reversed parenthesis" $ do
    it "Basic tests" $ do
      solve ")()(" `shouldBe` 2
      solve "((()" `shouldBe` 1
      solve "(((" `shouldBe` -1
      solve "())(((" `shouldBe` 3
      solve "())()))))()()(" `shouldBe` 4

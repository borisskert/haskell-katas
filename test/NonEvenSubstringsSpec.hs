module NonEvenSubstringsSpec where
import NonEvenSubstrings
import Test.Hspec

spec :: Spec
spec = do
  describe "Non-even substrings" $ do
    it "Basic tests" $ do
      solve "1341" `shouldBe` 7
      solve "1357" `shouldBe` 10
      solve "13471" `shouldBe` 12
      solve "134721" `shouldBe` 13
      solve "1347231" `shouldBe` 20
      solve "13472315" `shouldBe` 28

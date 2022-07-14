module RPNSpec where
import qualified RPN
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The rpn evaluator" $ do
    it "should work with the empty string" $
      RPN.calc "" `shouldBe` 0
    it "should parse numbers" $
      RPN.calc "3" `shouldBe` 3
    it "should parse float numbers" $
      RPN.calc "3.5" `shouldBe` 3.5
    it "should support addition" $
      RPN.calc "1 3 +" `shouldBe` 4
    it "should support multiplication" $
      RPN.calc "1 3 *" `shouldBe` 3
    it "should support substraction" $
      RPN.calc "1 3 -" `shouldBe` (-2)
    it "should support division" $
      RPN.calc "4 2 /" `shouldBe` 2
    it "should support division" $
      RPN.calc "5 1 2 + 4 * + 3 -" `shouldBe` 14.0

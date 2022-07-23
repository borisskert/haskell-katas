module FormatSentenceSpec where
import FormatSentence
import Test.Hspec

spec :: Spec
spec = do
  describe "Format words to sentence" $ do
    it "Basic tests" $ do
      formatWords ["one", "two", "three","four"] `shouldBe` "one, two, three and four"
      formatWords ["one"] `shouldBe` "one"
      formatWords ["one","","three"] `shouldBe` "one and three"
      formatWords ["","","three"] `shouldBe` "three"
      formatWords ["","",""] `shouldBe` ""
      formatWords ["one","two",""] `shouldBe` "one and two"
      formatWords [] `shouldBe` ""
      formatWords [""] `shouldBe` ""

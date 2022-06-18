module KataSpec where
import Prelude hiding (Either(..))
import Preloaded (Comparison(..))
import Kata(balance)
import Test.Hspec


spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      balance ""           ""             `shouldBe` Balance
      balance "!!"         "??"           `shouldBe` Right
      balance "!??"        "?!!"          `shouldBe` Left
      balance "!?!!"       "?!?"          `shouldBe` Left
      balance "!!???!????" "??!!?!!!!!!!" `shouldBe` Balance

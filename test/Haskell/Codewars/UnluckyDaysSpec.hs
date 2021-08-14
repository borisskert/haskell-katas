module Haskell.Codewars.UnluckyDaysSpec where
import Test.Hspec
import Haskell.Codewars.UnluckyDays

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Testing unluckyDays" $ do
    it "2015" $ do unluckyDays 2015 `shouldBe` 3
    it "1986" $ do unluckyDays 1986 `shouldBe` 1
    it "2689" $ do unluckyDays 2689 `shouldBe` 2
    it "2819" $ do unluckyDays 2819 `shouldBe` 2

module KataSpec (spec, main) where

import Kata (sumPpg, Player(..))
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $
      sumPpg iverson jordan `shouldBe` 31.4
        where
          iverson = Player { team = "76ers", ppg = 11.2 }
          jordan  = Player { team = "bulls", ppg = 20.2 }

module LastSurvivorsSpec (spec) where

import Data.List (sort)
import LastSurvivors (lastSurvivors)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sort (lastSurvivors "abaa") `shouldBe` "ac"
    sort (lastSurvivors "zzab") `shouldBe` "c"
    lastSurvivors "" `shouldBe` ""
    lastSurvivors "cexwdjixkp" `shouldBe` "cdeijkpwy"

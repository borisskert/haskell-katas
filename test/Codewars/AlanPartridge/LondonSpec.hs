module Codewars.AlanPartridge.LondonSpec ( spec, main ) where

import Codewars.AlanPartridge.London ( alan )
import Test.Hspec                    ( describe, hspec, it, shouldBe )

main :: IO ()
main = hspec spec
spec = describe "London" $ do
    it "Basic test 1" $
        alan ["Norwich","Rejection","Disappointment","Backstabbing Central","Shattered Dreams Parkway","London"]
        `shouldBe` "Smell my cheese you mother!"
    it "Basic test 2" $
        alan ["London","Norwich"]
        `shouldBe` "No, seriously, run. You will miss it."
    it "Basic test 3" $
        alan ["Norwich","Tooting","Bank","Rejection","Disappointment","Backstabbing Central","Exeter","Shattered Dreams Parkway","Belgium","London"]
        `shouldBe` "Smell my cheese you mother!"

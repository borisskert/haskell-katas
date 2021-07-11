module Codewars.AlanPartridge.AppleTurnoverSpec ( spec, main ) where

import Codewars.AlanPartridge.AppleTurnover ( apple )
import Test.Hspec                           ( Spec, describe, hspec, it, shouldBe )

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "Apple Turnover" $ do
    it "Basic test 1" $
        apple (Left "50")
        `shouldBe` "It's hotter than the sun!!"
    it "Basic test 2" $
        apple (Right 4)
        `shouldBe` "Help yourself to a honeycomb Yorkie for the glovebox."

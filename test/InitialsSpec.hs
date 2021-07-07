module InitialsSpec where

import Test.Hspec
import Initials
import Test.QuickCheck

import Data.Char (toUpper,isAscii,isUpper)

main = hspec spec
spec = do
    describe "getInitials" $ do
        it "works on basic examples" $ do
            getInitials "Henry Ford" `shouldBe` "H.F"
            getInitials "donald trump" `shouldBe` "D.T"
            getInitials "m" `shouldBe` "M"

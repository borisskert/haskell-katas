module Codewars.Kata.DecodeMorseSpec where

import Codewars.Kata.DecodeMorse (decodeMorse)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "decodeMorse" $ do
    it "should work on the example from the description" $ do
      decodeMorse ".... . -.--   .--- ..- -.. ." `shouldBe` "HEY JUDE"
      decodeMorse "   .   . " `shouldBe` "E E"
      decodeMorse
       "      ...---... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-. --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .   .-.. .- --.. -.--   -.. --- --. .-.-.-     "
        `shouldBe` "SOS! THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG."

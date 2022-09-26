module Codewars.Kata.CubicNumbersSpec where

import Codewars.Kata.CubicNumbers (sumOfCubes)
import Codewars.Kata.CubicNumbers.Types
import Test.Hspec

spec :: Spec
spec = do
  describe "sumOfCubes" $ do
    it "should work for some examples" $ do
      sumOfCubes "aqdf& 0 1 xyz 153 777.777" `shouldBe` Just (Lucky [0, 1, 153] 154)
      sumOfCubes "0 9026315 -827&()" `shouldBe` Just (Lucky [0] 0)
      sumOfCubes "No Numbers!" `shouldBe` Nothing
      sumOfCubes "/\a2021\ESC0\DLE 9" `shouldBe` Just (Lucky [1, 0] 1)
      sumOfCubes "0u76K910086" `shouldBe` Just (Lucky [0] 0)
      sumOfCubes "40435 82<\ACK06" `shouldBe` Nothing
      sumOfCubes "Fa87ww50Qe 9" `shouldBe` Nothing
      sumOfCubes "272818304 9x909\DLE0%0" `shouldBe` Just (Lucky [0,0] 0)

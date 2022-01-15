module Codewars.Kata.DistanceSpec where
import Codewars.Kata.Distance (distancesFromAverage)
-- import Codewars.Kata.Test.DSL
import Test.Hspec
import Test.QuickCheck


spec :: Spec
spec = do
  describe "distancesFromAverage" $ do
    it "static tests" $ do
      (map round2 . distancesFromAverage $ [55, 95, 62, 36, 48])           `shouldBe` [4.2, -35.8, -2.8, 23.2, 11.2]
      (map round2 . distancesFromAverage $ [1, 1, 1, 1, 1])                `shouldBe` [0, 0, 0, 0, 0]
      (map round2 . distancesFromAverage $ [1, -1, 1, -1, 1, -1])          `shouldBe` [-1.0, 1.0, -1.0, 1.0, -1.0, 1.0]
      (map round2 . distancesFromAverage $ [1, -1, 1, -1, 1])              `shouldBe` [-0.8, 1.2, -0.8, 1.2, -0.8]
      (map round2 . distancesFromAverage $ [2, -2])                        `shouldBe` [-2.0, 2.0]
      (map round2 . distancesFromAverage $ [1] )                           `shouldBe` [0]
      (map round2 . distancesFromAverage $ [123, -65, 32432, -353, -534])  `shouldBe` [6197.6, 6385.6, -26111.4, 6673.6, 6854.6]
      (map round2 . distancesFromAverage $ [0 .. 100]) `shouldBe` [50, 49 .. -50]

round2 :: Double -> Double
round2 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where n = 2

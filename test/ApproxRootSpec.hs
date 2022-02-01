module ApproxRootSpec where

import ApproxRoot
import Test.Hspec

round2 :: Double -> Double
round2 = (/ 10 ^ n) . fromInteger . round . (* 10.0 ^ n)
  where
    n = 2

fpCompare n s = (round2 $ approxRoot n) `shouldBe` s

spec :: Spec
spec = do
  it "Description cases" $ do
    fpCompare 400 20
    fpCompare 401 20.02
    fpCompare 2 1.33
  it "More basic cases" $ do
    fpCompare 4 2
    fpCompare 5 (2 + (5 - 4) `fdiv` (9 - 4))
    fpCompare 6 (2 + (6 - 4) `fdiv` (9 - 4))
    fpCompare 7 (2 + (7 - 4) `fdiv` (9 - 4))
    fpCompare 8 (2 + (8 - 4) `fdiv` (9 - 4))
    fpCompare 9 3
  it "More fixed cases" $ do
    fpCompare 100 10
    fpCompare 120 10.95
    fpCompare 106 10.29
    fpCompare 111 10.52
    fpCompare 121 11
    fpCompare 168 12.96

fdiv n m = fromIntegral n / fromIntegral m

-- the following line is optional for 8.2
main = hspec spec

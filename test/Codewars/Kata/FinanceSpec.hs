module Codewars.Kata.FinanceSpec where
import Codewars.Kata.Finance

import Test.Hspec
import Text.Printf (printf)

testFinance :: Integer -> Integer -> Spec
testFinance n s =
  it (printf "should return the result of the Financing Plan for n = %i " n) $
    finance n `shouldBe` s

spec :: Spec
spec = do
    describe "finance" $ do
      --                       mult     2 ^ x + n      x ^ 2 * n
        testFinance 0 0     -- *   0         0              0
        testFinance 1 3     -- *   3         1              3
        testFinance 2 12    -- *   6         8              3 
        testFinance 3 30    -- *  10        22              3.33
        testFinance 4 60    -- *  15        44              3.75                (4 * 3) * (4 * 3 - 1) /2 = 66    (+6)        (4 * 5 * 6) / 2 = 60
        testFinance 5 105   -- *  21        73              4.2                 (5 * 3) * (5 * 3 - 1) / 2 = 105 (-0)         (5 * 6 * 7) / 2 = 105
        testFinance 6 168   -- *  28                        4.66                (6 * 3) * (6 * 3 - 1) /2 = 153    (-15)      (6 * 7 * 8) / 2 = 168
        testFinance 8 360   -- *  45                        5.625               (8 * 3) * (8 * 3 - 1) / 2 = 276   (-84)      (8 * 9 * 10) /2 = 360
        testFinance 15 2040 -- * 136                        9.066          9.066 * 15 = 136       15 ^ 2 * (136 / 15)        

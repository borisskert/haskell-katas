module Codewars.G964.StockbrokerSpec where
import Codewars.G964.Stockbroker (balanceStatements)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testbalance :: String -> String -> Spec
testbalance strng s = 
    it (printf "should return balanceStatements: %s " strng ) $ 
         balanceStatements strng `shouldBe` s

spec :: Spec
spec = do
    describe "Basic Tests" $ do  
        let st = "GOOG 300 542.0 B, AAPL 50 145.0 B, CSCO 250.0 29 B, GOOG 200 580.0 S"
        let s = "Buy: 169850 Sell: 116000; Badly formed 1: CSCO 250.0 29 B ;"
        testbalance st s
        
        let st = "GOOG 90 160.45 B, JPMC 67 12.8 S, MYSPACE 24.0 210 B, CITI 50 450 B, CSCO 100 55.5 S";
        let s = "Buy: 14440 Sell: 6408; Badly formed 2: MYSPACE 24.0 210 B ;CITI 50 450 B ;";
        testbalance st s
        
        let st = "ZNGA 1300 2.66 B, CLH15.NYM 50 56.32 B, OWW 1000 11.623 B, OGG 20 580.1 B"
        let s = "Buy: 29499 Sell: 0"
        testbalance st s

        let st = "GOOG 300 542.93 B, CLH15.NYM 50 56.32 S, CSCO 250 29.46 B, OGG 20 580.1 B"
        let s = "Buy: 181846 Sell: 2816"
        testbalance st s

        let st = "ZNGA 1300 2.66, CLH15.NYM 50 56.32 S, OWW 1000 11.623 S, OGG 20 580.1 S"
        let s = "Buy: 0 Sell: 26041; Badly formed 1: ZNGA 1300 2.66 ;"
        testbalance st s

        let st = ""
        let s = "Buy: 0 Sell: 0"
        testbalance st s

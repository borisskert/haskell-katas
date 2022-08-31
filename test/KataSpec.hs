module KataSpec where

import Test.Hspec
import Test.QuickCheck
import Kata (mostFrequentDays)

spec :: Spec
spec = do
    describe "Sample Tests" $ do
        it "2427" $ mostFrequentDays 2427 `shouldBe` ["Friday"]
        it "2185" $ mostFrequentDays 2185 `shouldBe` ["Saturday"]
        it "1770" $ mostFrequentDays 1770 `shouldBe` ["Monday"]
        it "1785" $ mostFrequentDays 1785 `shouldBe` ["Saturday"]
        it "1984" $ mostFrequentDays 1984 `shouldBe` ["Monday", "Sunday"]
        it "2000" $ mostFrequentDays 2000 `shouldBe` ["Saturday", "Sunday"]
        it "2020" $ mostFrequentDays 2020 `shouldBe` ["Wednesday","Thursday"] 

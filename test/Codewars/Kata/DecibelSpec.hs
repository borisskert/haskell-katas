module Codewars.Kata.DecibelSpec where
import Codewars.Kata.Decibel (dBScale)
import Test.Hspec
import Text.Printf (printf)

spec :: Spec
spec = describe "dBScale" $ do
  it "works for some examples" $ do
    dBScale (10 ^^ (-9)) `shouldBeFuzzy` 30
    dBScale (10 ^^ (-5)) `shouldBeFuzzy` 70
    dBScale  10          `shouldBeFuzzy` 130
    dBScale 100          `shouldBeFuzzy` 140
    dBScale (2.48794569 * 10 ** 173) `shouldBeFuzzy` 1854
    
  where
    shouldBeFuzzy a e = round a `shouldBe` e

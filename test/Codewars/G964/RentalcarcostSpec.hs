module Codewars.G964.RentalcarcostSpec where
import Codewars.G964.Rentalcarcost (rentalCarCost)   

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testRental :: Int -> Int -> Spec
testRental d u = 
    it (printf "should return rentalCarCost for days: %d " d) $
        rentalCarCost d `shouldBe` u

spec :: Spec
spec = do
    describe "rentalCarCost" $ do
      testRental 1 40
      testRental 3 100
      testRental 7 230
      testRental 8 270

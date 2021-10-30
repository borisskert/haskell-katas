module Codewars.G964.MovieSpec where
import Codewars.G964.Movie (movie)

import Test.Hspec
import Test.QuickCheck
import Test.Hspec.QuickCheck
import Text.Printf (printf)

testMovie :: Int -> Int -> Double -> Int -> Spec
testMovie card ticket perc s = 
    it (printf "should return Movie for card: %d, ticket: %d perc %s " card ticket (show perc)) $
        movie card ticket perc `shouldBe` s

spec :: Spec
spec = do
    describe "Movie: Basic Tests" $ do 
        testMovie  500 15 0.9 43
        testMovie  100 10 0.95 24
        testMovie  500 20 0.9 34
        testMovie  0 10 0.95 2
        testMovie  85167 31 0.85 2754
        testMovie  247380 74 0.75 3346
        testMovie  162315 21 0.85 7735
        testMovie  193615 2 0.98 96857
        testMovie  490 3 0.70 166
 
module DuckDuckGooseSpec where

import Test.Hspec
import Test.HUnit
import DuckDuckGoose (duckDuckGoose)
import Preloaded

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "should find the correct goose" $ do
      let players = Player . (:"") <$> "abcdcefghz"
      runTest players 1 "a"
      runTest players 3 "c"
      runTest players 10 "z"
      runTest players 20 "z"
      runTest players 30 "z"
      runTest players 18 "g"
      runTest players 28 "g"
      runTest players 12 "b"
      runTest players 2 "b"
      runTest players 7 "f"
      
runTest :: [Player] -> Int -> String -> Expectation
runTest players goose expected =
  assertEqual (showInput players goose) expected $ duckDuckGoose players goose
  
showInput :: [Player] -> Int -> String
showInput players goose = unwords ["duckDuckGoose", show players, show goose]

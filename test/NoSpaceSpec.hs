module NoSpaceSpec where

import NoSpace (spacey)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "Example tests" $ do
    assertEqual "['kevin', 'has','no','space']" ["kevin", "kevinhas", "kevinhasno", "kevinhasnospace"] $ spacey ["kevin", "has", "no", "space"]
    assertEqual "['this', 'cheese', 'has', 'no','holes']" ["this", "thischeese", "thischeesehas", "thischeesehasno", "thischeesehasnoholes"] $ spacey ["this", "cheese", "has", "no", "holes"]

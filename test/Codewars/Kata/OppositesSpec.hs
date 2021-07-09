module Codewars.Kata.OppositesSpec where
import Codewars.Kata.Opposites (inlove)
import Test.Hspec
import Test.QuickCheck
import Text.Printf

spec :: Spec
spec = do
  describe "inlove" $ do
    it "should work for some examples" $ do
      let test a b r = if inlove a b == r 
            then return () 
            else expectationFailure $ printf "Expected %s on %i and %i petals" (show r) a b
      test 0 0 False
      test 0 1 True
      test 0 2 False
      test 1 0 True
      test 2 0 False
      test 1 1 False
      test 2 1 True

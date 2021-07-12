module Kata.Example.TwistSpec where

import Kata.Example.Twist (websites)
import Test.Hspec

spec :: Spec
spec = do
    describe "Kata Example Twist" $ do
      it "Tests" $ do
        websites `shouldSatisfy` (==1000) . length
        websites `shouldSatisfy` all (=="codewars")

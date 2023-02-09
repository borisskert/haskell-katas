module SequenceConvergenceSpec where

import Test.Hspec
import SequenceConvergence.Kata (convergence)

spec :: Spec
spec = do
    describe "Sequence Convergence" $ do
      it "Example Tests" $ do
        convergence 3 `shouldBe` 5
        convergence 5 `shouldBe` 6
        convergence 10 `shouldBe` 5
        convergence 15 `shouldBe` 2
        convergence 500 `shouldBe` 29
        convergence 5000 `shouldBe` 283
        convergence 1860 `shouldBe` 307
        convergence 8778 `shouldBe` 0

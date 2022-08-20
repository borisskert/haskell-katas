module AutomatonSpec where

import Test.Hspec
import Automaton

spec :: Spec
spec = do
    describe "BasicTests" $ do
        it "Test1" $ do
            (readCommands "1") `shouldBe` (True :: Bool)
        it "Test2" $ do
            (readCommands "1001") `shouldBe` (True :: Bool)

-- the following line is optional for 8.2
main = hspec spec

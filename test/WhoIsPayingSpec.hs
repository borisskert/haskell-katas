module WhoIsPayingSpec where

import Test.Hspec
import WhoIsPaying

spec :: Spec
spec = do
    describe "Who Is Paying?" $ do
        it "Fixed Tests" $ do
            whoIsPaying "Mexico" `shouldBe` ["Mexico", "Me"]
            whoIsPaying "Melania" `shouldBe` ["Melania", "Me"]
            whoIsPaying "Melissa" `shouldBe` ["Melissa", "Me"]
            whoIsPaying "Me" `shouldBe` ["Me"]
            whoIsPaying "" `shouldBe` [""]
            whoIsPaying "I" `shouldBe` ["I"]
            whoIsPaying "a" `shouldBe` ["a"]
            whoIsPaying "b" `shouldBe` ["b"]
            whoIsPaying "aa" `shouldBe` ["aa"]
            whoIsPaying "aaa" `shouldBe` ["aaa", "aa"]

main = hspec spec

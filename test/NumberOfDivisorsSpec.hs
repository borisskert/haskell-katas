module NumberOfDivisorsSpec (spec) where

import NumberOfDivisors (oddity)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    oddity 2 `shouldBe` "even" -- 1 2
    oddity 3 `shouldBe` "even" -- 1 3
    oddity 4 `shouldBe` "odd" -- 1 2 4
    oddity 5 `shouldBe` "even" -- 1 5
    oddity 6 `shouldBe` "even" -- 1 2 3 6
    oddity 7 `shouldBe` "even" -- 1 7
    oddity 8 `shouldBe` "even" -- 1 2 4 8
    oddity 9 `shouldBe` "odd" -- 1 3 9
    oddity 10 `shouldBe` "even" -- 1 2 5 10
    oddity 12 `shouldBe` "even" -- 1 2 3 4 6 12
    oddity 14 `shouldBe` "even" -- 1 2 7 14
    oddity 15 `shouldBe` "even" -- 1 3 5 15
    oddity 16 `shouldBe` "odd" -- 1 2 4 8 16

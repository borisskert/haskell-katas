module IterateNSpec (spec) where

import Test.Hspec
import IterateN (iterateN)

spec :: Spec
spec = do
  it "example tests" $ do
    let doubleOnce = iterateN 1 (2 *)
    doubleOnce 3 `shouldBe` 2 * 3
    doubleOnce 5 `shouldBe` 2 * 5
    let doubleTwice = iterateN 2 (2 *)
    doubleTwice 3 `shouldBe` 2 * 2 * 3
    doubleTwice 5 `shouldBe` 2 * 2 * 5
    iterateN 0 (2 *) 5 `shouldBe` 5
    iterateN 1 (2 *) 5 `shouldBe` 10
    iterateN 2 (2 *) 5 `shouldBe` 20
    iterateN 3 (2 *) 5 `shouldBe` 40

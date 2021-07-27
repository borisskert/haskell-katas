module Codewars.G964.SevenSpec (spec, main) where
import Codewars.G964.Seven

import Test.Hspec
import Text.Printf (printf)

testSeven :: Integer -> (Integer, Int) -> Spec
testSeven m s =
  it (printf "should return seven where m: %d " m) $
    seven m `shouldBe` s

main = hspec spec
spec = do
    describe "Basic Tests" $ do
        testSeven 1603 (7, 2)
        testSeven 371 (35, 1)
        testSeven 483 (42, 1)
        testSeven 477557102 (47, 7)
    describe "InitN tests" $ do
      it "initN 13 -> 1" $
        initN 13 `shouldBe` 1
      it "initN 413 -> 41" $
        initN 413 `shouldBe` 41
      it "initN 1603 -> 160" $
        initN 1603 `shouldBe` 160
      it "initN 160 -> 16" $
        initN 160 `shouldBe` 16
      it "initN 16 -> 1" $
        initN 16 `shouldBe` 1

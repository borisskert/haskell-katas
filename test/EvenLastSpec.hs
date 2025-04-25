module EvenLastSpec where

import Test.Hspec
import EvenLast (evenLast)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    describe "Sample Tests" $ do
      fixedTest [2,3,4,5] 30
      fixedTest [] 0

fixedTest :: [Int] -> Int -> Spec
fixedTest input expected =
  it ("evenLast " ++ show input) $ do
    evenLast input `shouldBe` expected

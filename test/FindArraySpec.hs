{-# LANGUAGE TypeApplications #-}

module FindArraySpec (spec) where

import FindArray (findArray)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    assertEqual "findArray \"aaaaa\" [2,4]" "aa" $ findArray "aaaaa" [2, 4]
    assertEqual "findArray [0,1,5,2,1,8,9,1,5] [1,4,7]" [1, 1, 1] $ findArray [0, 1, 5, 2, 1, 8, 9, 1, 5] [1, 4, 7]
    assertEqual "findArray [0,3,4] [2,6]" [4] $ findArray [0, 3, 4] [2, 6]
    assertEqual "findArray \"abcd\" [2,2,2]" "ccc" $ findArray "abcd" [2, 2, 2]
    assertEqual "findArray \"abcd\" [3,0,2]" "dac" $ findArray "abcd" [3, 0, 2]
  it "more example tests" $ do
    assertEqual "findArray [1,2,3,4,5] [0]" [1] $ findArray [1, 2, 3, 4, 5] [0]
    assertEqual "findArray [1,2,3,4,5] [4,2,0]" [5, 3, 1] $ findArray [1, 2, 3, 4, 5] [4, 2, 0]
    assertEqual "findArray [1,2,3,4,5] [2,2,2]" [3, 3, 3] $ findArray [1, 2, 3, 4, 5] [2, 2, 2]
    assertEqual "findArray [\"this\", \"is\", \"test\"] [0,1,2]" ["this", "is", "test"] $
      findArray ["this", "is", "test"] [0, 1, 2]

    assertEqual "findArray [1,2,3] []" [] $ findArray [1, 2, 3] []
    assertEqual "findArray [] [2,1,3]" [] $ findArray @Int [] [2, 1, 3]
    assertEqual "findArray [] []" [] $ findArray @Int [] []
    assertEqual "findArray [1,2,3] []" [] $ findArray [1, 2, 3] [-1]

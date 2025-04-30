module StringScrambleSpec (spec) where

import StringScramble (scramble)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "scramble \"abcd\" [0,3,1,2]" "acdb" $ scramble "abcd" [0, 3, 1, 2]
    assertEqual "scramble \"bskl5\" [2,1,4,3,0]" "5sblk" $ scramble "bskl5" [2, 1, 4, 3, 0]
    assertEqual "scramble \"sc301s\" [4,0,3,1,5,2]" "c0s3s1" $ scramble "sc301s" [4, 0, 3, 1, 5, 2]
    assertEqual "scramble \"hello\" [4,3,2,1,0]" "olleh" $ scramble "hello" [4, 3, 2, 1, 0]

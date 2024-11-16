module SpeedOfLettersSpec where

import SpeedOfLetters (speedify)
import Test.HUnit
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works for some example strings" $ do
      assertEqual (show "AZ") "A                         Z" $
        speedify "AZ"
      assertEqual (show "ABC") "A B C" $
        speedify "ABC"
      assertEqual (show "ACE") "A  C  E" $
        speedify "ACE"
      assertEqual (show "CBA") "  A" $
        speedify "CBA"
      assertEqual (show "HELLOWORLD") "     E H    DLL   OLO   R  W" $
        speedify "HELLOWORLD"

module SaveChristmasSpec where

import SaveChristmas (determineTime)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    mapM_
      (uncurry fixedTest)
      [ (["01:00:00", "02:30:00"], True),
        (["01:00:00", "02:30:00", "22:00:00"], False),
        (["12:00:00", "12:00:00"], True),
        ([], True)
      ]

fixedTest :: [String] -> Bool -> Spec
fixedTest arr expected = it (show arr) $ determineTime arr `shouldBe` expected

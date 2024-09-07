module TheLatestClockSpec (spec) where

import Control.Monad
import Test.Hspec
import Text.Printf (printf)
import TheLatestClock (latestClock)

spec :: Spec
spec = do
  let examples =
        [ ([9, 1, 2, 5], "21:59"),
          ([1, 9, 8, 3], "19:38"),
          ([0, 2, 2, 2], "22:20"),
          ([3, 5, 0, 2], "23:50"),
          ([9, 0, 1, 1], "19:10"),
          ([2, 3, 2, 4], "23:42"),
          ([1, 2, 8, 9], "19:28")
        ]
  forM_ examples $ \(digits, expected) -> do
    let [a, b, c, d] = digits
    it (printf "latestClock %d %d %d %d" a b c d) $ do
      latestClock a b c d `shouldBe` expected

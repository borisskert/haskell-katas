module IndexEqualsValueSpec (spec) where

import Data.Array.Unboxed
import Data.Foldable (forM_)
import IndexEqualsValue (indexEqualsValue)
import Test.Hspec

spec :: Spec
spec = it "example tests" $
  forM_
    [ ([-8, 0, 2, 5], 2),
      ([-1, 0, 3, 6], -1),
      ([-3, 0, 1, 3, 10], 3),
      ([-5, 1, 2, 3, 4, 5, 7, 10, 15], 1),
      ([9, 10, 11, 12, 13, 14], -1),
      ([0], 0),
      ([-1, 0, 1, 3], 3),
      ([-1, 0, 1, 3, 4], 3)
    ]
    $ \(arg, expected) -> indexEqualsValue (listArray (0, length arg - 1) arg) `shouldBe` expected

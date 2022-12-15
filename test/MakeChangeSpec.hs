module MakeChangeSpec where

import MakeChange
import Test.HUnit (assertEqual)
import Test.Hspec

myTest n exp = do
  assertEqual msg exp actual
  where
    actual = makeChange n
    msg = "Failed at: " ++ showArgs
    showArgs = show n

spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest 0 (changeDefault)
    myTest 1 (changeDefault {p = 1})
    myTest 5 (changeDefault {n = 1})
    myTest 43 (changeDefault {q = 1, d = 1, n = 1, p = 3})
    myTest 91 (changeDefault {h = 1, q = 1, d = 1, n = 1, p = 1})
    myTest 101 (changeDefault {h = 2, p = 1})
    myTest 239 (changeDefault {h = 4, q = 1, d = 1, p = 4})

-- the following line is optional for 8.2
main = hspec spec

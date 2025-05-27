module Count4Spec where

import Count4 (count)
import Test.Hspec

spec :: Spec
spec = do
  it "Fixed Tests" $ do
    mapM_
      (\(inp, ans) -> count inp `shouldMatchList` ans)
      [ ("aba", [('a', 2), ('b', 1)]),
        ("", []),
        ("aa", [('a', 2)]),
        ("aabb", [('a', 2), ('b', 2)])
      ]

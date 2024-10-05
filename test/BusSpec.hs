module BusSpec where

import Test.Hspec
import Bus (enough)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    mapM_ (\(c@(Case cap on wait), ans) -> it (show c) $ enough cap on wait `shouldBe` ans)
      [ (Case 10 5 5, 0)
      , (Case 100 60 50, 10)
      , (Case 20 5 5, 0)
      ]
      
data Case = Case Int Int Int

instance Show Case where
  show (Case cap on wait) =
    "cap: " ++ show cap ++ ", " ++
    "on: "  ++ show on  ++ ", " ++
    "wait: " ++ show wait

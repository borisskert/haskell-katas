module Haskell.SylarDoom.MazeRunnerSpec where

import Haskell.SylarDoom.MazeRunner
import Test.Hspec

maze :: [[Int]]
maze =
  [ [1, 1, 1, 1, 1, 1, 1],
    [1, 0, 0, 0, 0, 0, 3],
    [1, 0, 1, 0, 1, 0, 1],
    [0, 0, 1, 0, 0, 0, 1],
    [1, 0, 1, 0, 1, 0, 1],
    [1, 0, 0, 0, 0, 0, 1],
    [1, 2, 1, 0, 1, 0, 1]
  ]

spec :: Spec
spec = do
  describe "The mazeRunner function" $ do
    describe "should return Finish" $ do
      it "Example #1" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'E', 'E', 'E'] `shouldBe` "Finish"
      it "Example #2" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'S', 'S', 'E', 'E', 'N', 'N', 'E'] `shouldBe` "Finish"
      it "Example #3" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'E', 'E', 'E', 'W', 'W'] `shouldBe` "Finish"

    describe "should return Dead" $ do
      it "Example #4" $
        mazeRunner maze ['N', 'N', 'N', 'W', 'W'] `shouldBe` "Dead"
      it "Example #5" $
        mazeRunner maze ['N', 'N', 'N', 'N', 'N', 'E', 'E', 'S', 'S', 'S', 'S', 'S', 'S'] `shouldBe` "Dead"

    describe "should return Lost" $ do
      it "Example #6" $
        mazeRunner maze ['N', 'E', 'E', 'E', 'E'] `shouldBe` "Lost"

    describe "should work for some random mazes" $ do
      it "Example #7" $
        mazeRunner
          [ [0, 1, 0, 1, 1, 0],
            [1, 0, 0, 0, 3, 1],
            [0, 0, 0, 1, 0, 0],
            [1, 0, 0, 1, 0, 0],
            [0, 0, 0, 0, 1, 2],
            [1, 0, 0, 0, 1, 1]
          ]
          ""
          `shouldBe` "Lost"

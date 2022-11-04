module PointInPolygonSpec where

import Control.Monad (unless)
import Data.List (intercalate)
import PointInPolygon (intersectLines, intersectRayWithDistance, intersectRayWithLine, pointInPoly)
import Test.Hspec

spec :: Spec
spec = do
  it "Should handle a simple square" $ do
    let poly =
          [ (-5, -5),
            (5, -5),
            (5, 5),
            (-5, 5)
          ]
    showAndTest poly (-6, 0) False
    showAndTest poly (1, 1) True

  it "Should intersectLines" $ do
    intersectLines (1, 0) (2, 0) `shouldBe` Right (Just (0, 0))
    intersectLines (1, 0) (2, 1) `shouldBe` Right (Just (-1, -1))
    intersectLines (1, 0) (1, 1) `shouldBe` Right Nothing
    intersectLines (1, 0) (1, 0) `shouldBe` Left (1, 0)
  it "Should intersectRayWithLine" $ do
    intersectRayWithLine ((2, 2), (1, 1)) (-1, 0) `shouldBe` Right (Just (0, 0))
    intersectRayWithLine ((2, 2), (-1, -1)) (-1, 0) `shouldBe` Right (Just (0, 0))
    intersectRayWithLine ((1, 1), (-1, -1)) (-1, 0) `shouldBe` Right (Just (0, 0))
    intersectRayWithLine ((1, 1), (2, 2)) (-1, 0) `shouldBe` Right Nothing
    intersectRayWithLine ((1, 1), (2, 2)) (1, 0) `shouldBe` Left ((1, 1), (2, 2))
  it "Should intersectRayWithDistance" $ do
    intersectRayWithDistance ((2, 2), (1, 1)) ((-1, 1), (1, -1)) `shouldBe` Right (Just (0, 0))
    intersectRayWithDistance ((2, 2), (1, 1)) ((0, 0), (1, -1)) `shouldBe` Right (Just (0, 0))
    intersectRayWithDistance ((2, 2), (1, 1)) ((1, -1), (2, -2)) `shouldBe` Right Nothing
    intersectRayWithDistance ((2, 2), (1, 1)) ((-1, -1), (3, 3)) `shouldBe` Left ((-1, -1), (2, 2))
    intersectRayWithDistance ((3, 3), (1, 1)) ((-1, -1), (2, 2)) `shouldBe` Left ((-1, -1), (2, 2))

showAndTest poly point expect = do
  let actual = pointInPoly poly point
  unless (actual == expect) (drawTest poly point expect)
  actual `shouldBe` expect

drawTest poly point inside = putStrLn div
  where
    div =
      concat
        [ "<div style='background:white; width:140px;'>",
          "<svg width='140' height='140'>",
          "<polygon points='" ++ intercalate " " points ++ "' stroke='blue' fill='white'></polygon>",
          "<circle cx='" ++ show cx ++ "' cy='" ++ show cy ++ "' r='2' fill='" ++ color ++ "'></circle>",
          "</svg>",
          "</div>"
        ]
    points = map (showPt . transform) poly
    showPt (x, y) = show x ++ "," ++ show y
    (cx, cy) = transform point
    transform (x, y) = (t x, t y) where t i = (i + 7) * 10 + 0.5
    color = if inside then "green" else "red"

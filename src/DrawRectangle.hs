module DrawRectangle where

type Pixel = Char

type Canvas = [[Pixel]]

type Point = (Int, Int)

type Rectangle = (Point, Point)

-- https://www.codewars.com/kata/5889ae4f7af7f99a9a000019/train/haskell

drawRectangle :: Canvas -> Rectangle -> Canvas
drawRectangle canvas rectangle = header ++ drawLines ++ footer
  where
    (point1, point2) = rectangle
    (x1, y1) = point1
    (x2, y2) = point2

    minX = minimum [x1, x2]
    minY = minimum [y1, y2]

    countY = abs (y1 - y2)
    countX = abs (x1 - x2)

    header = take minY canvas
    lines = take (countY + 1) . drop minY $ canvas
    footer = drop (minY + countY + 1) canvas

    drawLines = (++ [drawLastLine]) . (++ drawNormalLines) $ [drawFirstLine]

    drawFirstLine = drawEdgeLine firstLine
      where
        firstLine = head lines

    drawLastLine = drawEdgeLine lastLine
      where
        lastLine = last lines

    drawNormalLines = map drawNormalLine . tail . init $ lines

    drawEdgeLine :: [Pixel] -> [Pixel]
    drawEdgeLine line =
      (++ rest)
        . (++ ['*'])
        . (++ replicate (countX - 1) '-')
        . (++ ['*'])
        . take minX
        $ line
      where
        rest = drop (minX + countX + 1) line

    drawNormalLine :: [Pixel] -> [Pixel]
    drawNormalLine line =
      (++ rest)
        . (++ ['|'])
        . (++ area)
        . (++ ['|'])
        . take minX
        $ line
      where
        rest = drop (minX + countX + 1) $ line
        area = take (countX - 1) . drop (minX + 1) $ line

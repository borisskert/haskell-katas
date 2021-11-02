module Arach where

-- https://www.codewars.com/kata/5bc73331797b005d18000255/train/haskell

drawSpider :: Int -> Int -> Char -> Char -> String
drawSpider legSize bodySize mouth eye =
  (leftLegs ++)
    . (++ rightLegs)
    . (bodyLeft ++)
    . (++ bodyRight)
    . (eyes ++)
    . (++ eyes)
    $ [mouth]
  where
    eyeSize = (`div` 2) . (2 ^) $ bodySize :: Int
    eyes = replicate eyeSize eye :: String
    bodyLeft = replicate bodySize '(' :: String
    bodyRight = replicate bodySize ')' :: String

    toLeftLegs 1 = "^"
    toLeftLegs 2 = "/\\"
    toLeftLegs 3 = "/╲"
    toLeftLegs 4 = "╱╲"

    toRightLegs 1 = "^"
    toRightLegs 2 = "/\\"
    toRightLegs 3 = "╱\\"
    toRightLegs 4 = "╱╲"

    leftLegs = toLeftLegs legSize
    rightLegs = toRightLegs legSize

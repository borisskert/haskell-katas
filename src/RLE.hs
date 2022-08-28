module RLE where

--  https://www.codewars.com/kata/546dba39fa8da224e8000467/train/haskell

import Data.List (group)

runLengthEncoding :: String -> [(Int, Char)]
runLengthEncoding = map (\xs -> (length xs, head xs)) . group

-- Again what learned:
-- ```
-- import Control.Arrow ((&&&))
--
-- runLengthEncoding = map (length &&& head) . group
-- ```

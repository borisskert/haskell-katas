module BirthdayII where

-- https://www.codewars.com/kata/5805f0663f1f9c49be00011f/train/haskell

import Data.Char (chr, ord)
import Text.Printf (printf)

data Present = Goodpresent | Crap | Empty | Bang | Badpresent | Dog deriving (Eq, Show, Enum)

type Message = String

type NumPasses = Int

present :: Present -> NumPasses -> Message
present Goodpresent y = map (chr . (+ y) . ord) "goodpresent"
present Crap _ = "acpr"
present Bang y = show . sum . map ((+) (- y) . ord) $ "bang"
present Badpresent _ = "Take this back!"
present Dog y = printf "pass out from excitement %d times" y

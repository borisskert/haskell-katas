module Codewars.AlarmUtils where

-- https://www.codewars.com/kata/568dcc3c7f12767a62000038/train/haskell

setAlarm :: Bool -> Bool -> Bool
setAlarm employed vacation = employed && not vacation

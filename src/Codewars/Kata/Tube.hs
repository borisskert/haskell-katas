module Codewars.Kata.Tube where

import Codewars.Kata.Tube.Types

calculator ::
  -- | the distance you would have to walk
  Double ->
  -- | the distance the bus would travel
  Double ->
  -- | the distance you have to *walk* to the bus
  Double ->
  -- | your decision whether to take the Bus or Walk
  Decision
calculator distance busDrive busWalk
  | walkDuration < tenMinutes = Walk
  | walkDuration > 2 = Bus
  | busDuration + walkToBusDuration < walkDuration = Bus
  | otherwise = Walk
  where
    walkSpeed = 5 -- km/h
    busSpeed = 8 -- km/h
    walkDuration = distance / walkSpeed :: Double -- hours
    busDuration = busDrive / busSpeed :: Double -- hours
    walkToBusDuration = busWalk / walkSpeed :: Double -- hours
    tenMinutes = 1 / 6 -- hours

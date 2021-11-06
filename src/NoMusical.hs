module NoMusical (noMusical) where

-- https://www.codewars.com/kata/5e65916b4696e500134987e1/train/haskell

import Data.List (nub)

noMusical :: Int -> Int -> Int -> Int -> Int
noMusical start end musicalEvery durationEnrolment
  | musicalEvery == 0 = end - start + 1
  | otherwise =
    length
      . filter (not . any (`elem` musicalYears))
      . map enrolmentYears
      $ classes
  where
    enrolmentYears :: Int -> [Int]
    enrolmentYears x = take durationEnrolment [x ..]

    classesYears = nub . concatMap enrolmentYears $ classes
    classes = [start .. end] :: [Int]

    musicalYears =
      map (+ start)
        . filter (\x -> x `mod` musicalEvery == 0)
        . map (+ (- start))
        $ classesYears

module Codewars.Kata.Files where

--  https://www.codewars.com/kata/574bd867d277832448000adf/train/haskell

import Data.Char (isLetter)
import System.FilePath (takeBaseName, takeDirectory, takeExtension)

isAudio :: FilePath -> Bool
isAudio path = path `isFilePathWithExtension` [".mp3", ".flac", ".alac", ".aac"]

isImage :: FilePath -> Bool
isImage path = path `isFilePathWithExtension` [".jpg", ".jpeg", ".png", ".bmp", ".gif"]

isFilePathWithExtension :: FilePath -> [String] -> Bool
isFilePathWithExtension path extensions
  | extension `notElem` extensions = False
  | null base = False
  | not . all isLetter $ base = False
  | directory == "." = True
  | otherwise = all isLetter directory
  where
    base = takeBaseName path
    extension = takeExtension path
    directory = takeDirectory path

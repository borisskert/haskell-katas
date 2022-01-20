module Codewars.Kata.Attribute where

-- https://www.codewars.com/kata/5822b65bb81f702016000026/train/haskell

import Codewars.Kata.Attribute.Preload

linuxType :: String -> FileType
linuxType = from . head

from :: Char -> FileType
from '-' = File
from 'd' = Directory
from 'l' = Symlink
from 'p' = Pipe
from 's' = Socket
from 'c' = Character
from 'b' = Block
from 'D' = Door

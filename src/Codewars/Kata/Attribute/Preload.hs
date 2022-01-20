module Codewars.Kata.Attribute.Preload where

data FileType = File | Directory | Symlink | Character 
              | Block | Door | Socket | Pipe deriving (Eq, Show)

module LikesVsDislikes (likeOrDislike) where

import Preloaded

-- https://www.codewars.com/kata/62ad72443809a4006998218a/train/haskell

likeOrDislike :: [Like] -> Maybe Like
likeOrDislike = foldl apply Nothing

apply :: Maybe Like -> Like -> Maybe Like
apply Nothing like = Just like
apply (Just old) new
  | old == new = Nothing
  | otherwise = Just new

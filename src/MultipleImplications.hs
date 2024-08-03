module MultipleImplications (multImplication) where

-- https://www.codewars.com/kata/58f671ee5522a9c33800009b/train/haskell
multImplication :: [Bool] -> Maybe Bool
multImplication [] = Nothing
multImplication [False] = Just False
multImplication [True] = Just True
multImplication xs = Just $ foldl1 implication xs

implication :: Bool -> Bool -> Bool
implication True False = False
implication _ _ = True

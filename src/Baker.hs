module Baker (cakes) where

type Ingredient = String
type Amount = Int
type Recipe = [(Ingredient, Amount)]
type Storage = [(Ingredient, Amount)]

-- https://www.codewars.com/kata/525c65e51bf619685c000059/train/haskell

cakes :: Recipe -> Storage -> Int
cakes recipe storage = minimum . map (perIngredient) $ recipe
  where
    perIngredient :: (Ingredient, Amount) -> Int
    perIngredient (igredient, amount) = case lookup igredient storage of
      Just found -> found `div` amount
      Nothing -> 0

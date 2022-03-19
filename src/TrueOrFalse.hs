module TrueOrFalse ((&&), (||), not, otherwise, bool) where

-- https://www.codewars.com/kata/5bba2a9940196db222000022/train/haskell

import TrueOrFalse.Prelude (Bool (..))
import Prelude hiding (Bool (..), not, otherwise, (&&), (||))

-- Boolean and
infixr 3 &&

(&&) :: Bool -> Bool -> Bool
(&&) False _ = False
(&&) _ False = False
(&&) _ _ = True

-- Boolean or
infixr 2 ||

(||) :: Bool -> Bool -> Bool
(||) True _ = True
(||) _ True = True
(||) _ _ = False

-- Boolean not
not :: Bool -> Bool
not True = False
not False = True

-- same as True, make guards more readable
otherwise :: Bool
otherwise = True

-- `bool x y p` evaluates to x when p is False, and evaluates to y when p is True
bool :: a -> a -> Bool -> a
bool x _ False = x
bool _ y True = y

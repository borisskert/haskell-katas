module Find where

data Val = F (Int -> Bool) | I Int

instance Show Val where
  show (F a) = "F" ++ "(Int -> Bool)"
  show (I a) = "I " ++ show a

-- https://www.codewars.com/kata/55a12bb8f0fac1ba340000aa/train/haskell

findFunction :: [Val] -> [Int] -> [Int]
findFunction vs = filter (with function)
  where
    function = head . filter isFunction $ vs

    with :: Val -> Int -> Bool
    with (F function) x = function x
    with _ _ = error "Should not happen"

    isFunction :: Val -> Bool
    isFunction (F _) = True
    isFunction _ = False

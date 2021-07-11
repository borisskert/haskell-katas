module Welcome where

--  https://www.codewars.com/kata/5302d846be2a9189af0001e4/train/haskell

sayhello :: [String] -> String -> String -> String
sayhello names city state = "Hello, " ++ unwords names ++ "! Welcome to " ++ city ++ ", " ++ state ++ "!"

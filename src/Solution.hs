module Solution where

--  https://www.codewars.com/kata/5a5f9f80f5dc3f942b002309/train/haskell

type OmniBool = Bool

omniBool :: OmniBool
omniBool = True

(==) :: OmniBool -> Bool -> Bool
(==) _ _ = True

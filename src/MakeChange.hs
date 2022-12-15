module MakeChange where

--  https://www.codewars.com/kata/5365bb5d5d0266cd010009be/train/haskell

data Change = Change
  { h :: Int,
    q :: Int,
    d :: Int,
    n :: Int,
    p :: Int
  }
  deriving (Eq, Show)

add :: Change -> Change -> Change
add Change {h = h1, q = q1, d = d1, n = n1, p = p1} Change {h = h2, q = q2, d = d2, n = n2, p = p2} = Change {h = h1 + h2, q = q1 + q2, d = d1 + d2, n = n1 + n2, p = p1 + p2}

mult :: Change -> Int -> Change
mult Change {h = h, q = q, d = d, n = n, p = p} x = Change {h = h * x, q = q * x, d = d * x, n = n * x, p = p * x}

worth :: Change -> Int
worth Change {h = h, q = q, d = d, n = n, p = p} = h * 50 + q * 25 + d * 10 + n * 5 + p

changeDefault :: Change
changeDefault = Change {h = 0, q = 0, d = 0, n = 0, p = 0}

makeChange :: Int -> Change
makeChange =
  ( `substitute`
      [ Change {h = 1, q = 0, d = 0, n = 0, p = 0},
        Change {h = 0, q = 1, d = 0, n = 0, p = 0},
        Change {h = 0, q = 0, d = 1, n = 0, p = 0},
        Change {h = 0, q = 0, d = 0, n = 1, p = 0},
        Change {h = 0, q = 0, d = 0, n = 0, p = 1}
      ]
  )

substitute :: Int -> [Change] -> Change
substitute 0 _ = changeDefault
substitute amount (coin : coins) = add next . (`mult` count) $ coin
  where
    (count, remaining) = amount `divMod` worth coin
    next = substitute remaining coins

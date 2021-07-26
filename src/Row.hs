module Row where

--  https://www.codewars.com/kata/5abd66a5ccfd1130b30000a9/train/haskell

rowWeights :: [Int] -> [Int]
rowWeights [player1] = [player1, 0]
rowWeights [player1, player2] = [player1, player2]
rowWeights xs = [team1, team2]
  where
    players = zip [1..] xs :: [Player]
    team1 = sum $ map toWeight $ filter isInTeam1 players
    team2 = sum $ map toWeight $ filter isInTeam2 players


-- Index, Weight
type Player = (Int, Int)


isInTeam1 :: Player -> Bool
isInTeam1 (index, _) = index `mod` 2 == 1


isInTeam2 :: Player -> Bool
isInTeam2 (index, _) = index `mod` 2 == 0


toWeight :: Player -> Int
toWeight (_, weight) = weight

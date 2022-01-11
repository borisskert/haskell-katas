module RockPaperScissorsLizardSpock (rpsls) where

import Preloaded (RPSLS (..))

-- https://www.codewars.com/kata/57d29ccda56edb4187000052/train/haskell

rpsls :: RPSLS -> RPSLS -> Ordering

-- Scissors cuts Paper
rpsls Scissors Paper = GT
rpsls Paper Scissors = LT

-- Paper covers Rock
rpsls Paper Rock = GT
rpsls Rock Paper = LT

-- Rock crushes Lizard
rpsls Rock Lizard = GT
rpsls Lizard Rock = LT

-- Lizard poisons Spock
rpsls Lizard Spock = GT
rpsls Spock Lizard = LT

-- Spock smashes Scissors
rpsls Spock Scissors = GT
rpsls Scissors Spock = LT

-- Scissors decapitates Lizard
rpsls Scissors Lizard = GT
rpsls Lizard Scissors = LT

-- Lizard eats Paper
rpsls Lizard Paper = GT
rpsls Paper Lizard = LT

-- Paper disproves Spock
rpsls Paper Spock = GT
rpsls Spock Paper = LT

-- Spock vaporizes Rock
rpsls Spock Rock = GT
rpsls Rock Spock = LT

-- (and as it always has) Rock crushes Scissors
rpsls Rock Scissors = GT
rpsls Scissors Rock = LT

rpsls Rock Rock = EQ
rpsls Spock Spock = EQ
rpsls Lizard Lizard = EQ
rpsls Scissors Scissors = EQ
rpsls Paper Paper = EQ

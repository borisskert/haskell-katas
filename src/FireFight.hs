module FireFight (fire_fight) where

-- https://www.codewars.com/kata/57e8fba2f11c647abc000944/train/haskell

import Data.Text (Text, pack, replace)

fire_fight :: Text -> Text
fire_fight = replace (pack "Fire") (pack "~~")

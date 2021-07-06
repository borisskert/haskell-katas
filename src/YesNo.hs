module YesNo where

boolToWord :: Bool -> String
boolToWord x = do
  if x
    then "Yes"
    else "No"

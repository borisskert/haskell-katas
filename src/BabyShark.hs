module BabyShark (babySharkLyrics) where
-- /kata/5d076515e102162ac0dc514e/
babySharkLyrics=(++"Run away,…\n").concatMap(unlines.(\x->(++[x++"!"]).replicate 3$unwords.(++replicate 6 "doo").(:[]).(++",")$x))$["Baby shark","Mommy shark","Daddy shark","Grandma shark","Grandpa shark","Let's go hunt"]

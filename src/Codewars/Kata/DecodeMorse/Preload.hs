module Codewars.Kata.DecodeMorse.Preload (morseCodes) where

import Data.List.Split (splitOn)
import Data.Map (Map, fromList)

asString = "-:T\n--:M\n---:O\n-----:0\n----.:9\n---..:8\n---...::\n--.:G\n--.-:Q\n--..:Z\n--..--:,\n--...:7\n-.:N\n-.-:K\n-.--:Y\n-.--.:(\n-.--.-:)\n-.-.:C\n-.-.--:!\n-.-.-.:;\n-..:D\n-..-:X\n-..-.:/\n-...:B\n-...-:=\n-....:6\n-....-:-\n.:E\n.-:A\n.--:W\n.---:J\n.----:1\n.----.:'\n.--.:P\n.--.-.:@\n.-.:R\n.-.-.:+\n.-.-.-:.\n.-..:L\n.-..-.:\"\n.-...:&\n..:I\n..-:U\n..---:2\n..--.-:_\n..--..:?\n..-.:F\n...:S\n...-:V\n...--:3\n...---...:SOS\n...-..-:$\n....:H\n....-:4\n.....:5"

morseCodes :: Map String String
morseCodes = fromList . map ((\(a : b : _) -> (a, b)) . splitOn ":") . lines $ asString

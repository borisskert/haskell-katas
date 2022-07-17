module BingoSpec where

import Bingo
import Test.Hspec

spec :: Spec
spec = do
  it "works on a few fixed cases" $ do
    bingo [("ABC", 65), ("HGR", 74), ("BYHT", 740)] 2 `shouldBe` "Loser!"
    bingo [("ABC", 65), ("HGR", 74), ("BYHT", 740)] 1 `shouldBe` "Winner!"
    bingo [("HGTYRE", 74), ("BE", 66), ("JKTY", 74)] 3 `shouldBe` "Loser!"
    bingo [("MYU", 89), ("EVO", 90), ("NKZ", 65), ("MIC", 74), ("VDM", 65), ("EVZ", 86), ("OMW", 78), ("ZZK", 77)] 1 `shouldBe` "Winner!"

-- the following line is optional for 8.2
main = hspec spec

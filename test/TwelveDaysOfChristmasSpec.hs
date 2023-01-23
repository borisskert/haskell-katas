module TwelveDaysOfChristmasSpec (spec) where

import Data.Foldable (for_)
import Data.List (sortBy)
import Test.Hspec
import Test.QuickCheck
import TwelveDaysOfChristmas (comparator)

spec :: Spec
spec = do
  it "verse 12" $ do
    let verse =
          [ "On the 12th day of Christmas my true love gave to me",
            "12 drummers drumming,",
            "11 pipers piping,",
            "10 lords a leaping,",
            "9 ladies dancing,",
            "8 maids a milking,",
            "7 swans a swimming,",
            "6 geese a laying,",
            "5 golden rings,",
            "4 calling birds,",
            "3 French hens,",
            "2 turtle doves and",
            "a partridge in a pear tree."
          ]
    once $
      counterexample "\nChristma is cancelled!\n" $
        forAll (shuffle verse) $ \shuffled -> do
          putStr "<LOG::-shuffled>"
          for_ shuffled putStrLn
          sortBy comparator shuffled `shouldBe` verse

module CharacterFrequencySpec (spec) where

import CharacterFrequency (letterFrequency)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    letterFrequency "wklv lv d vhfuhw phvvdjh"
      `shouldBe` [('v', 5), ('h', 4), ('d', 2), ('l', 2), ('w', 2), ('f', 1), ('j', 1), ('k', 1), ('p', 1), ('u', 1)]
    letterFrequency "As long as I'm learning something, I figure I'm OK - it's a decent day."
      `shouldBe` [('i', 7), ('a', 5), ('e', 5), ('n', 5), ('g', 4), ('s', 4), ('m', 3), ('o', 3), ('t', 3), ('d', 2), ('l', 2), ('r', 2), ('c', 1), ('f', 1), ('h', 1), ('k', 1), ('u', 1), ('y', 1)]
    letterFrequency "IWT LDGAS XH HIXAA P LTXGS EAPRT, STHEXIT BN TUUDGIH ID BPZT RATPG PCS ETGUTRI HTCHT DU XI."
      `shouldBe` [('t', 12), ('i', 7), ('h', 6), ('a', 5), ('g', 5), ('p', 5), ('x', 5), ('d', 4), ('s', 4), ('u', 4), ('e', 3), ('r', 3), ('b', 2), ('c', 2), ('l', 2), ('n', 1), ('w', 1), ('z', 1)]

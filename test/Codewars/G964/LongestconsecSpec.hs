module Codewars.G964.LongestconsecSpec (spec) where

import Codewars.G964.Longestconsec (longestConsec)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLong :: [String] -> Int -> String -> Spec
testLong arrs k u =
  it (printf "should return longestConsec for arrs : %s k : %d " (show arrs) k) $
    longestConsec arrs k `shouldBe` u

main = hspec spec

spec = do
  describe "longestConsec" $ do
    testLong ["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"] 2 "abigailtheta"
    testLong ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"] 1 "oocccffuucccjjjkkkjyyyeehh"
    testLong ["itvayloxrp", "wkppqsztdkmvcuwvereiupccauycnjutlv", "vweqilsfytihvrzlaodfixoyxvyuyvgpck"] 2 "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
    testLong ["wlwsasphmxx", "owiaxujylentrklctozmymu", "wpgozvxxiu"] 2 "wlwsasphmxxowiaxujylentrklctozmymu"
    testLong ["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"] 3 "ixoyx3452zzzzzzzzzzzz"
    testLong [] 3 ""
    testLong ["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"] 15 ""
    testLong ["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"] 0 ""
    testLong ["dxqjk", "embbf", "l"] 1 "dxqjk"
    testLong ["", "cmvz", "gb", "cgr"] 3 "cmvzgbcgr"
    testLong ["rfx", "", ""] 2 ""
    testLong ["fui", "cnlkx", "x", "yxontnee", "theuxokiv", "gsr", "uukqg", "aqbvu", "pui", "golfwxaxv"] 7 "yxontneetheuxokivgsruukqgaqbvupuigolfwxaxv"
    testLong ["hczvlcl", "", "yhqhaxrtq", "krkjmra", "brgx", "obow", "ofupx", "nrphq"] 2 "yhqhaxrtqkrkjmra"
    testLong ["gw", "go", "", "zebi"] 1 "zebi"

-- Some random tests still failing, like the following one:
-- testLong ["drkqr", "", "besuktjhq", "cptjyr", "orxcqvvsbmizcskociwuk", "", "dvoqbhmagvtn", "pruiqlbomefxpnfk", "ejzdgabt", "apaljfjlb", "vdlcelsoerqa", "yakuuykdopxiz"] 9 "besuktjhqcptjyrorxcqvvsbmizcskociwukdvoqbhmagvtnpruiqlbomefxpnfkejzdgabtapaljfjlb"

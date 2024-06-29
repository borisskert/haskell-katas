module BananasSpec (spec) where

import Bananas (bananas)
import Control.Monad (when)
import Data.List (sort)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "example 0" $ test "banann" []
    it "example 1" $ test "banana" ["banana"]
    it "example 2" $
      test
        "bbananana"
        [ "-b--anana",
          "-ba--nana",
          "-ban--ana",
          "-bana--na",
          "-banan--a",
          "-banana--",
          "b---anana",
          "b-a--nana",
          "b-an--ana",
          "b-ana--na",
          "b-anan--a",
          "b-anana--"
        ]
    it "example 3" $ test "bananaaa" ["banan--a", "banan-a-", "banana--"]
    it "example 4" $ test "bananana" ["b--anana", "ba--nana", "ban--ana", "bana--na", "banan--a", "banana--"]

--   describe "Test search" $ do
--     it "search single letter" $ do
--       search "a" "a" `shouldBe` ["a"]
--     it "search empty" $ do
--       search "" "a" `shouldBe` ["-"]
--     it "search in empty" $ do
--       search "a" "" `shouldBe` []
--     it "search in abc" $ do
--       search "abc" "abc" `shouldBe` ["abc"]
--     it "search a in abc" $ do
--       search "a" "abc" `shouldBe` ["a--"]
--     it "search b in abc" $ do
--       search "b" "abc" `shouldBe` ["-b-"]
--     it "search c in abc" $ do
--       search "c" "abc" `shouldBe` ["--c"]

test :: String -> [String] -> Expectation
test xs expected = do
  let actual = bananas xs
  when (length actual /= length expected) $ expectationFailure "Wrong number of bananas!"
  sort actual `shouldBe` expected

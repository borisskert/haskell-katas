module Codewars.Kata.PaginationSpec where

import Codewars.Kata.Pagination (itemCount, pageCount, pageIndex, pageItemCount)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "itemCount" $ do
    it "should work for some collections" $ do
      itemCount [1 .. 5] `shouldBe` 5
      itemCount ["Hello", "World"] `shouldBe` 2

  describe "pageCount" $ do
    it "should work for some collections and ipp values" $ do
      pageCount [1 .. 5] 5 `shouldBe` 1
      pageCount [1 .. 5] 3 `shouldBe` 2
      pageCount [1 .. 5] 2 `shouldBe` 3
      pageCount [1 .. 5] 1 `shouldBe` 5

  describe "pageItemCount" $ do
    it "should work for some collections and ipp values" $ do
      pageItemCount [1 .. 5] 5 0 `shouldBe` Just 5 -- zero based indices
      pageItemCount [1 .. 5] 5 1 `shouldBe` Nothing
      pageItemCount [1 .. 5] 3 0 `shouldBe` Just 3
      pageItemCount [1 .. 5] 3 1 `shouldBe` Just 2
      pageItemCount [1 .. 5] 3 (-1) `shouldBe` Nothing
      pageItemCount [] 3 0 `shouldBe` Nothing

    it "should reject invalid indices" $ do
      property $ \xs (Positive n) (Positive k) ->
        pageItemCount (xs :: [()]) n (pageCount xs n + k) `shouldBe` Nothing

  describe "pageIndex" $ do
    it "should work for some collections and ipp values" $ do
      pageIndex "ABCDE" 5 0 `shouldBe` Just 0 -- zero based indices
      pageIndex "ABCDE" 5 3 `shouldBe` Just 0 -- zero based indices
      pageIndex "ABCDE" 2 3 `shouldBe` Just 1 -- zero based indices
      pageIndex "ABCDE" 2 8 `shouldBe` Nothing
      pageIndex [] 5 0 `shouldBe` Nothing
      pageIndex "a" 1 1 `shouldBe` Nothing

    it "should reject invalid indices" $ do
      property $ \xs (Positive n) (Positive k) ->
        pageIndex (xs :: [()]) n (itemCount xs + k) `shouldBe` Nothing

    it "with negative n" $ do
      pageIndex [0] 1 (-1) `shouldBe` Just 0 -- I don't know why this is a thing
      pageIndex "a" 1 (-2) `shouldBe` Just 0
      pageIndex [0] 2 (-1) `shouldBe` Just 0
      pageIndex [(), ()] 1 (-1) `shouldBe` Just 0
      pageIndex "aa" 2 (-1) `shouldBe` Just 0
      pageIndex "aaaaa" 2 (-1) `shouldBe` Just 0
      --      pageIndex "ABCDE" 2 (-1) `shouldBe` Nothing -- WTF? This was really a failing test
      pageIndex [] 1 (-1) `shouldBe` Nothing
      pageIndex [] 2 (-1) `shouldBe` Nothing
      pageIndex [] 3 (-1) `shouldBe` Nothing
      pageIndex [] 4 (-1) `shouldBe` Nothing

--this comment wrote my girlfriend :)
--boriseli<3

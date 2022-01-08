module BinaryTreeSearchSpec (spec) where

import BinaryTreeSearch (search, Tree(..))
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "The search function" $ do
    it "should work for some examples" $ do
        search 1 Nil `shouldBe` False
        search 2 (Node Nil 2 Nil) `shouldBe` True
        search 2 (Node Nil 1 Nil) `shouldBe` False
        search 2 (Node Nil 1 Nil) `shouldBe` False
        search (-11) (Node Nil 0 (Node Nil (-11) Nil)) `shouldBe` True

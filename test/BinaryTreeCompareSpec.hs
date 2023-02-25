module BinaryTreeCompareSpec (spec) where

import Preloaded (Tree(..))
import BinaryTreeCompare (compare)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    let a = Just $ Node { val = 1, left = Nothing, right = Nothing }
        b = Just $ Node { val = 1, left = Nothing, right = Nothing }
        c = Just $ Node { val = 2, left = Nothing, right = Nothing }
    BinaryTreeCompare.compare a b `shouldBe` True
    BinaryTreeCompare.compare a c `shouldBe` False

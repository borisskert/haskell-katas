module MaxSumSpec where
-- Tests can be written using Hspec http://hspec.github.io/

import Test.Hspec
import MaxSum
import MaxSumPreload

tree1 = Node (Node (Leaf 9) (-22) (Leaf 50)) 5 (Node (Leaf 9) 11 (Leaf 2))

spec :: Spec
spec = do
    describe "solution_test" $ do
        it "max_sum_in_null_tree" $ do
            (maxSum None) `shouldBe` (0 :: Int)
        it "max_sum_in_perfect_tree" $ do
            (maxSum tree1) `shouldBe` (33 :: Int)

-- the following line is optional for 8.2
main = hspec spec

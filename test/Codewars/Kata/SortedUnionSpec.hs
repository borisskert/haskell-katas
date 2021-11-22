module Codewars.Kata.SortedUnionSpec where
import Codewars.Kata.SortedUnion (uniteUnique)
-- import Codewars.Kata.SortedUnion.Utils (isUnique)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "uniteUnique" $ do
    it "returns an empty list if the input is empty" $ 
      uniteUnique [] `shouldBe` ([] :: [()])
    
    it "returns an empty list if all lists are empty" $ property $ 
      forAll (listOf $ return []) $ \xs ->
        uniteUnique xs `shouldBe` ([] :: [()])
    
    it "returns the single element list if there is only one" $ property $ \x ->
      uniteUnique [[x]] `shouldBe` ([x] :: [Int])
    
    it "returns the concatenation of the lists if they don't share elements" $ property $ 
      forAll ((map return . flip take [1..]) `fmap` choose (0, 100)) $ \xs ->
        uniteUnique xs `shouldBe` concat xs
    
    -- it "returns a list where all elements are unique" $ do
    --   let uniqueCheck :: (Show a, Ord a, Arbitrary a) => [[a]] -> Property
    --       uniqueCheck x = property $ 
    --         forAll (arbitrary `asTypeOf` return x) $ \xs -> 
    --           uniteUnique xs `shouldSatisfy` isUnique    
    --   conjoin 
    --     [ uniqueCheck (undefined :: [[Int]])
    --     , uniqueCheck (undefined :: [[Char]])
    --     ]

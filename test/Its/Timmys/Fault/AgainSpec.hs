module Its.Timmys.Fault.AgainSpec where
import Its.Timmys.Fault.Again (createList)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "createList" $ do
    it "should return a list" $ do
      createList 0 `shouldBe` []
      createList 1 `shouldBe` [1]
      createList 2 `shouldBe` [1,2]
      createList 3 `shouldBe` [1,2,3]
      createList 4 `shouldBe` [1,2,3,4]
      createList 5 `shouldBe` [1,2,3,4,5]
    
    prop "returns only values lesser or equal than the input" $ \(Positive n) ->
      createList n `shouldSatisfy` all (<= n)
    
    prop "returns a list with the correct length" $ \(Positive n) ->
      createList n `shouldSatisfy` (n ==) . length    

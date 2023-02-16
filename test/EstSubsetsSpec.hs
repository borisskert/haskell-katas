module EstSubsetsSpec where
import Test.Hspec
import EstSubsets (estSubsets)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      estSubsets [1, 2, 3, 4] `shouldBe` 15
      estSubsets ['a', 'b', 'c', 'd', 'd'] `shouldBe` 15
      estSubsets [2, 3, 4, 5, 5, 6, 6, 7, 8, 8] `shouldBe` 127
      estSubsets ['a', 'z', 'z', 'z', 'b', 'j', 'f', 'k', 'b', 'd', 'j', 'j', 'n', 'm', 'm'] `shouldBe` 511
      estSubsets [1, 1, 1, 1, 1, 1, 1, 1] `shouldBe` 1
      estSubsets ([] :: [Integer])  `shouldBe` 0   

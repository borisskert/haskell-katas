module Codewars.Kata.UniqueSpec where
import Codewars.Kata.Unique (projectPartners)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "projectPartners" $ do
    it "should work for some examples" $ do
      projectPartners 2 `shouldBe`  1
      projectPartners 3 `shouldBe`  3
      projectPartners 4 `shouldBe`  6
      projectPartners 5 `shouldBe` 10
      projectPartners 6 `shouldBe` 15
      projectPartners 7 `shouldBe` 21
      projectPartners 8 `shouldBe` 28
      projectPartners 10 `shouldBe` 45
      projectPartners 12 `shouldBe` 66
      projectPartners 14 `shouldBe` 91
    
    it "should terminate in (almost) constant time" $ do
      property $ forAll (choose (10^10, 10^100)) $ \n ->
        projectPartners n `shouldSatisfy` (>0)

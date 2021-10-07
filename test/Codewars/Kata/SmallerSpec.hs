module Codewars.Kata.SmallerSpec where
import Codewars.Kata.Smaller (smaller)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "smaller" $ do
    it "works for some examples" $ do
      smaller [5,4,3,2,1]  `shouldBe` [4,3,2,1,0]
      smaller [1,2,3]      `shouldBe` [0,0,0]
      smaller ([] :: [()]) `shouldBe` []

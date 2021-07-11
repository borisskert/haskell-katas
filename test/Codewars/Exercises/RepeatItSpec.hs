module Codewars.Exercises.RepeatItSpec where
import Codewars.Exercises.RepeatIt (repeatIt)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "repeatIt" $ do
    prop "works on empty strings" $ \(Positive n) ->
      repeatIt "" n `shouldBe` ""
    
    prop "returns the string if n = 1" $ \str ->
      repeatIt str 1 `shouldBe` str
    
    prop "returns the right string if n = 2" $ \str ->
      repeatIt str 2 `shouldBe` str ++ str

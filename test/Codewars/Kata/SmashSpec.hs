module Codewars.Kata.SmashSpec where
import Codewars.Kata.Smash (smash)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "smash" $ do
    it "should work for some simple tests" $ do
      smash []                 `shouldBe` ""
      smash ["hello"]          `shouldBe` "hello"
      smash ["hello", "world"] `shouldBe` "hello world"

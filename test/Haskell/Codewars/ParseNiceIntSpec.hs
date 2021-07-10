module Haskell.Codewars.ParseNiceIntSpec where
import Test.Hspec
import Haskell.Codewars.ParseNiceInt

spec :: Spec
spec = do
  describe "Basic Tests" $
    it "should work with basic tests" $ do
      getAge "2 years old" `shouldBe` 2
      getAge "4 years old" `shouldBe` 4
      getAge "5 years old" `shouldBe` 5
      getAge "7 years old" `shouldBe` 7

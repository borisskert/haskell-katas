module Codewars.Kata.RabbitsSpec where
import Codewars.Kata.Rabbits (fibRabbits)
import Test.Hspec

spec :: Spec
spec = do
  describe "fibRabbits" $ do
    it "should work for some examples" $ do
      fibRabbits 0 4 `shouldBe`   0
      fibRabbits 1  4 `shouldBe`   1
      fibRabbits 2  1 `shouldBe`   1
      fibRabbits 4  0 `shouldBe`   1
      fibRabbits 3  1 `shouldBe`  2
      fibRabbits 5  3 `shouldBe`   19
      fibRabbits 6  3 `shouldBe`   40
      fibRabbits 8 12 `shouldBe` 8425
      fibRabbits 7  4 `shouldBe`  181

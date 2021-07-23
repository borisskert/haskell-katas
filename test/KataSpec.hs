module KataSpec where
import Test.Hspec
import Kata (dontGiveMeFive)


spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      dontGiveMeFive 1 9  `shouldBe` 8
      dontGiveMeFive 1 11  `shouldBe` 10
      dontGiveMeFive 1 16  `shouldBe` 14
      dontGiveMeFive 1 26  `shouldBe` 23
      dontGiveMeFive 4 26  `shouldBe` 20
      dontGiveMeFive 5 26  `shouldBe` 19
      dontGiveMeFive 5 25  `shouldBe` 18
      dontGiveMeFive 6 26  `shouldBe` 19
      dontGiveMeFive 4 17 `shouldBe` 12
      dontGiveMeFive (-1) 1 `shouldBe` 3
      dontGiveMeFive (-2) 1 `shouldBe` 4
      dontGiveMeFive (-3) 1 `shouldBe` 5
      dontGiveMeFive (-4) 1 `shouldBe` 6
      dontGiveMeFive (-5) 1 `shouldBe` 6
      dontGiveMeFive (-5) 2 `shouldBe` 7
      dontGiveMeFive (-5) 3 `shouldBe` 8
      dontGiveMeFive (-5) 4 `shouldBe` 9
      dontGiveMeFive (-5) 5 `shouldBe` 9
      dontGiveMeFive (-5) 6 `shouldBe` 10
      dontGiveMeFive (-6) 1 `shouldBe` 7
      dontGiveMeFive (-7) 1 `shouldBe` 8
      dontGiveMeFive (-7) 2 `shouldBe` 9
      dontGiveMeFive (-7) 3 `shouldBe` 10
      dontGiveMeFive (-7) 4 `shouldBe` 11
      dontGiveMeFive (-7) 5 `shouldBe` 11
      dontGiveMeFive (-7) 6 `shouldBe` 12
      dontGiveMeFive (-17) 16 `shouldBe` 30

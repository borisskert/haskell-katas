module LandPerimeterSpec where

import LandPerimeter (landPerimeter)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      landPerimeter ["OOO", "OXO", "OOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["XOO", "OOO", "OOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOO", "OOO", "OOX"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOO", "OOO", "OOO"] `shouldBe` "Total land perimeter: 0"
      landPerimeter ["OXO", "OOO", "OOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOX", "OOO", "OOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOO", "XOO", "OOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOO", "OOX", "OOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOO", "OOO", "XOO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OOO", "OOO", "OXO"] `shouldBe` "Total land perimeter: 4"
      landPerimeter ["OXOOOX", "OXOXOO", "XXOOOX", "OXXXOO", "OOXOOX", "OXOOOO", "OOXOOX", "OOXOOO", "OXOOOO", "OXOOXX"] `shouldBe` "Total land perimeter: 60"
      landPerimeter ["OXOOO", "OOXXX", "OXXOO", "XOOOO", "XOOOO", "XXXOO", "XOXOO", "OOOXO", "OXOOX", "XOOOO", "OOOXO"] `shouldBe` "Total land perimeter: 52"
      landPerimeter ["XXXXXOOO", "OOXOOOOO", "OOOOOOXO", "XXXOOOXO", "OXOXXOOX"] `shouldBe` "Total land perimeter: 40"
      landPerimeter ["XOOOXOO", "OXOOOOO", "XOXOXOO", "OXOXXOO", "OOOOOXX", "OOOXOXX", "XXXXOXO"] `shouldBe` "Total land perimeter: 54"
      landPerimeter ["OOOOXO", "XOXOOX", "XXOXOX", "XOXOOO", "OOOOOO", "OOOXOO", "OOXXOO"] `shouldBe` "Total land perimeter: 40"

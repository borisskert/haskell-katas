module RedKnightSpec (spec) where

import RedKnight (redKnight)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    redKnight 0 4 `shouldBe` ("White", 8)
    redKnight 0 5 `shouldBe` ("Black", 10)
    redKnight 0 6 `shouldBe` ("White", 12)
    redKnight 0 7 `shouldBe` ("Black", 14)
    redKnight 0 8 `shouldBe` ("White", 16)
    redKnight 1 4 `shouldBe` ("Black", 8)
    redKnight 1 5 `shouldBe` ("White", 10)
    redKnight 1 6 `shouldBe` ("Black", 12)
    redKnight 1 7 `shouldBe` ("White", 14)
    redKnight 1 8 `shouldBe` ("Black", 16)

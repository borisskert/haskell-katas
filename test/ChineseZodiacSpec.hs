module ChineseZodiacSpec where

import ChineseZodiac (chineseZodiac)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works on some basic cases" $ do
      chineseZodiac 1965 `shouldBe` "Wood Snake"
      chineseZodiac 1998 `shouldBe` "Earth Tiger"
      chineseZodiac 2016 `shouldBe` "Fire Monkey"
      chineseZodiac 1924 `shouldBe` "Wood Rat"
      chineseZodiac 1968 `shouldBe` "Earth Monkey"
      chineseZodiac 2162 `shouldBe` "Water Dog"
      chineseZodiac 6479 `shouldBe` "Earth Goat"
      chineseZodiac 3050 `shouldBe` "Metal Dog"
      chineseZodiac 6673 `shouldBe` "Water Rooster"
      chineseZodiac 6594 `shouldBe` "Wood Tiger"
      chineseZodiac 9911 `shouldBe` "Metal Goat"
      chineseZodiac 2323 `shouldBe` "Water Rabbit"
      chineseZodiac 3448 `shouldBe` "Earth Rat"
      chineseZodiac 1972 `shouldBe` "Water Rat"

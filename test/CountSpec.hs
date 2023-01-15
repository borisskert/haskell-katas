module CountSpec (spec) where

import Count (countChar)
import Test.Hspec

spec :: Spec
spec = do
  describe "simple strings" $ do
    it "basic examples" $ do
      countChar "Hello" 'o' `shouldBe` 1
      countChar "Hello" 'l' `shouldBe` 2
      countChar "Hello" 'x' `shouldBe` 0
      countChar "Hello" 'h' `shouldBe` 0
    it "handles empty strings" $ do
      countChar "" 'z' `shouldBe` 0

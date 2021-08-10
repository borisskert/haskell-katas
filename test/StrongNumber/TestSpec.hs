module StrongNumber.TestSpec (spec) where

import Test.Hspec
import StrongNumber.Kata (strong)


spec :: Spec
spec = do
  describe "Strong Number" $ do
    it "Example Tests" $ do
      strong 1 `shouldBe` "STRONG!!!!"
      strong 2 `shouldBe` "STRONG!!!!"
      strong 145 `shouldBe` "STRONG!!!!"
      strong 7 `shouldBe` "Not Strong !!"
      strong 93 `shouldBe` "Not Strong !!"
      strong 185 `shouldBe` "Not Strong !!"

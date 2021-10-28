module JumpingSpec where

import Test.Hspec
import Jumping

spec :: Spec
spec = do
   it "finds the jumps" $ do
      jumpingNumber 1 `shouldBe` "Jumping!!"
      jumpingNumber 7 `shouldBe` "Jumping!!"
      jumpingNumber 9 `shouldBe` "Jumping!!"
      jumpingNumber 11 `shouldBe` "Not!!"
      jumpingNumber 20 `shouldBe` "Not!!"
      jumpingNumber 23 `shouldBe` "Jumping!!"
      jumpingNumber 32 `shouldBe` "Jumping!!"
      jumpingNumber 79 `shouldBe` "Not!!"
      jumpingNumber 97 `shouldBe` "Not!!"
      jumpingNumber 98 `shouldBe` "Jumping!!"
      jumpingNumber 100 `shouldBe` "Not!!"
      jumpingNumber 101 `shouldBe` "Jumping!!"
      jumpingNumber 102 `shouldBe` "Not!!"
      jumpingNumber 554 `shouldBe` "Not!!"
      jumpingNumber 789 `shouldBe` "Jumping!!"
      jumpingNumber 987 `shouldBe` "Jumping!!"
      jumpingNumber 8987 `shouldBe` "Jumping!!"
      jumpingNumber 89098 `shouldBe` "Not!!"
      jumpingNumber 4343456 `shouldBe` "Jumping!!"
      jumpingNumber 98789876 `shouldBe` "Jumping!!"
      jumpingNumber 123456789 `shouldBe` "Jumping!!"
      jumpingNumber 1234567890 `shouldBe` "Not!!"

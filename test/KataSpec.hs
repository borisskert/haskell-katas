module KataSpec where
import Kata(replace)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      replace "Hi!" `shouldBe` "H!!"
      replace "!Hi! Hi!" `shouldBe` "!H!! H!!"
      replace "aeiou" `shouldBe` "!!!!!"
      replace "ABCDE" `shouldBe` "!BCD!"

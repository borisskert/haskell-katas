module KataSpec where
import Test.Hspec
import Kata (filterWords)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      filterWords "HELLO world!"                      `shouldBe` "Hello world!"
      filterWords "This    will    not    pass "      `shouldBe` "This will not pass"
      filterWords "NOW THIS is a VERY EXCITING test!" `shouldBe` "Now this is a very exciting test!"

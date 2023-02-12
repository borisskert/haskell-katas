module OneTwoThreeSpec (spec, main) where
import OneTwoThree (oneTwoThree)
import Test.Hspec

main :: IO ()
main = hspec spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
        oneTwoThree 0  `shouldBe` [0, 0]
        oneTwoThree 1  `shouldBe` [1, 1]
        oneTwoThree 2  `shouldBe` [2, 11]
        oneTwoThree 3  `shouldBe` [3, 111]
        oneTwoThree 19 `shouldBe` [991, 1111111111111111111]

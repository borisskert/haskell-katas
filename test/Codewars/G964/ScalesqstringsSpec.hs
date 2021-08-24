module Codewars.G964.ScalesqstringsSpec where
import qualified Codewars.G964.Scalesqstrings as Scaling

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)
import Test.Hspec.Discover (describe)

testScale :: [Char] -> Int -> Int -> [Char] -> Spec
testScale strng k n s = 
    it (printf "should return scale for string: %s %d %d \n" (show strng) k n) $
        Scaling.scale strng k n `shouldBe` s

spec :: Spec
spec = do
    describe "scale" $ do
        let a = "abcd\nefgh\nijkl\nmnop"
        let r = "aabbccdd\naabbccdd\naabbccdd\neeffgghh\neeffgghh\neeffgghh\niijjkkll\niijjkkll\niijjkkll\nmmnnoopp\nmmnnoopp\nmmnnoopp"
        testScale a 2 3 r
        testScale "" 5 5 ""
        testScale "Kj\nSH" 1 2 "Kj\nKj\nSH\nSH"
        it "2 abc -> aabbcc" $
            Scaling.horizontalRepeat 2 "abc" `shouldBe` "aabbcc"
        it "2 abc -> abc\nabc" $
            Scaling.verticalRepeat 2 "abc" `shouldBe` "abc\nabc"

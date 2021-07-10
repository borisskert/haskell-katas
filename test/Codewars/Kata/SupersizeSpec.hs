module Codewars.Kata.SupersizeSpec where
import Codewars.Kata.Supersize (superSize)
import Control.Monad (forM_)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "superSize" $ do
    it "works for some examples" $ do
      superSize 123456 `shouldBe` 654321
      superSize    105 `shouldBe`    510
      superSize     12 `shouldBe`     21

    it "returns the number itself if between 0-9" $
      forM_ [0..9] $ \n -> superSize n `shouldBe` n

    it "returns a larger number than the original one" $ property $ \(Positive n) ->
      superSize n `shouldSatisfy` (>= n)

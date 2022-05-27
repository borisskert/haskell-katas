module KataSpec (spec) where

import Test.Hspec
import Kata (pyramid)

spec :: Spec
spec = do
  it "basic tests" $ do
    pyramid 0 `shouldBe` []
    pyramid 1 `shouldBe` [[1]]
    pyramid 2 `shouldBe` [[1], [1, 1]]
    pyramid 3 `shouldBe` [[1], [1, 1], [1, 1, 1]]

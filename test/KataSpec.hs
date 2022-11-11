module KataSpec (spec) where

import Test.Hspec
import Test.QuickCheck
import Kata (x)

spec :: Spec
spec = do
  it "Fixed tests" $ do
    x 3    `shouldBe` "■□■\n□■□\n■□■"
    x 5    `shouldBe` "■□□□■\n□■□■□\n□□■□□\n□■□■□\n■□□□■"
    x 7    `shouldBe` "■□□□□□■\n□■□□□■□\n□□■□■□□\n□□□■□□□\n□□■□■□□\n□■□□□■□\n■□□□□□■"

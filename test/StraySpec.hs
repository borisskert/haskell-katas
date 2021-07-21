module StraySpec (spec) where

import Test.Hspec
import Stray (stray)

spec :: Spec
spec = do
  it "example test" $ do
    stray [1,1,2] `shouldBe` 2
    stray [17, 17, 3, 17, 17, 17, 17] `shouldBe` 3

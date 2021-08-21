module LastSurvivorSpec (spec) where

import LastSurvivor (lastSurvivor)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    lastSurvivor "abc" [1, 1] `shouldBe` 'a'
    lastSurvivor "kbc" [0, 1] `shouldBe` 'b'
    lastSurvivor "zbk" [2, 1] `shouldBe` 'z'
    lastSurvivor "c" [] `shouldBe` 'c'

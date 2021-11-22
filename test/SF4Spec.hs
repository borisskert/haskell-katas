module SF4Spec where

import SF4
import Test.Hspec
import Test.QuickCheck

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the call cost" $ do
    -- phoneCall 2 2 1 0 `shouldBe` 0
    -- phoneCall 2 2 1 2 `shouldBe` 1
    -- phoneCall 2 2 2 2 `shouldBe` 1
    -- phoneCall 2 2 2 3 `shouldBe` 1
    -- phoneCall 2 2 2 4 `shouldBe` 2
    -- phoneCall 2 2 2 20 `shouldBe` 10
    -- phoneCall 2 2 2 21 `shouldBe` 10
    -- phoneCall 2 2 2 22 `shouldBe` 11
    -- phoneCall 3 1 2 20 `shouldBe` 14
    -- phoneCall 10 1 2 22 `shouldBe` 11
    -- phoneCall 2 2 1 24 `shouldBe` 14
    -- phoneCall 1 2 1 6 `shouldBe` 3
    phoneCall 10 9 4 99 `shouldBe` 12

main = hspec spec

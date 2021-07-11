module BlueSpec where

import Test.Hspec
import Blue

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    guessBlue 5  5  2  3 `shouldBe` 0.6
    guessBlue 5  7  4  3 `shouldBe` 0.2
    guessBlue 12 18 4  6 `shouldBe` 0.4

-- the following line is optional for 8.2
main = hspec spec

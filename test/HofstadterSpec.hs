module HofstadterSpec where

import Test.Hspec
import Hofstadter

spec :: Spec
spec = do
  it "finds the sequences " $ do
    f 0   `shouldBe` 1
    f 1   `shouldBe` 1
    f 2   `shouldBe` 2
    f 3   `shouldBe` 2
    f 4   `shouldBe` 3
    f 5   `shouldBe` 3
    f 6   `shouldBe` 4
    f 7   `shouldBe` 5
    f 8   `shouldBe` 5
    f 9   `shouldBe` 6
    f 10  `shouldBe` 6
    
    m 0   `shouldBe` 0
    m 1   `shouldBe` 0
    m 2   `shouldBe` 1
    m 3   `shouldBe` 2
    m 4   `shouldBe` 2
    m 5   `shouldBe` 3
    m 6   `shouldBe` 4
    m 7   `shouldBe` 4
    m 8   `shouldBe` 5
    m 9   `shouldBe` 6
    m 10  `shouldBe` 6

-- the following line is optional for 8.2
main = hspec spec

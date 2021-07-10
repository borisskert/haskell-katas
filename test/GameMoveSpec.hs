module GameMoveSpec where

import Test.Hspec
import GameMove

spec :: Spec
spec = do
  it "basic tests" $ do
    move 0 4 `shouldBe` 8
    move 3 6 `shouldBe` 15
    move 2 5 `shouldBe` 12

main = hspec spec

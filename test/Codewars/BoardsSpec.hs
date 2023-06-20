module Codewars.BoardsSpec (spec) where

import Codewars.Boards (checkeredBoard)
import Test.Hspec

main = hspec spec

spec = do
  describe "checkeredBoard" $ do
    it "works for some even examples" $ do
      checkeredBoard 4 `shouldBe` "□ ■ □ ■\n■ □ ■ □\n□ ■ □ ■\n■ □ ■ □"
      checkeredBoard 2 `shouldBe` "□ ■\n■ □"

    it "works for some odd examples" $ do
      checkeredBoard 3 `shouldBe` "■ □ ■\n□ ■ □\n■ □ ■"
      checkeredBoard 7 `shouldBe` "■ □ ■ □ ■ □ ■\n□ ■ □ ■ □ ■ □\n■ □ ■ □ ■ □ ■\n□ ■ □ ■ □ ■ □\n■ □ ■ □ ■ □ ■\n□ ■ □ ■ □ ■ □\n■ □ ■ □ ■ □ ■"

module BumpsSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Bumps

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "bumps checked" $ do
      it "handles a few cases" $ do
        bump "n" `shouldBe`  "Woohoo!"
        bump "_nnnnnnn_n__n______nn__nn_nnn"  `shouldBe` "Car Dead"
        bump "______n___n_" `shouldBe` "Woohoo!"
        bump "nnnnnnnnnnnnnnnnnnnnn" `shouldBe` "Car Dead"

-- the following line is optional for 8.2
main = hspec spec

module AnimalzSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Animalz

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "sorts out the animals" $ do
        it "some parts" $ do
          reorder ["tail", "body", "head"] `shouldBe` ["head", "body", "tail"]
          reorder ["tails", "body", "heads"] `shouldBe`  ["heads", "body", "tails"]
          reorder ["bottom", "middle", "top"] `shouldBe`  ["top", "middle", "bottom"]
          reorder ["lower legs", "torso", "upper legs"] `shouldBe` ["upper legs", "torso", "lower legs"]
          reorder ["ground", "rainbow", "sky"] `shouldBe` ["sky", "rainbow", "ground"]

-- the following line is optional for 8.2
main = hspec spec

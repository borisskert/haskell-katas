module LightSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Light

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "CHANGE PLACES!" $ do
        it "does the doing" $ do
          light "green" `shouldBe` "yellow"
          light "yellow" `shouldBe` "red"
          light "red" `shouldBe` "green"
            

-- the following line is optional for 8.2
main = hspec spec

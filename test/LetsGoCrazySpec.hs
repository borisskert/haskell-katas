module LetsGoCrazySpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import LetsGoCrazy

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "finds fruits" $ do
        it "does the doing" $ do
           subtractSum  10 `shouldBe` "apple"

-- the following line is optional for 8.2
main = hspec spec

module TwiceAsOldSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import TwiceAsOld

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "TwiceAsOld" $ do
        it "twice_as_old" $ do
            (twice_as_old 83 40) `shouldBe` 3

-- the following line is optional for 8.2
main = hspec spec

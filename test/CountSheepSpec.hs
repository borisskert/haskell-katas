module CountSheepSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import CountSheep

spec :: Spec
spec = do
    describe "Fixed tests" $ do
        it "1 sheep" $ do
            countSheep 1 `shouldBe` ("1 sheep..." :: String)
        it "2 sheep" $ do
            countSheep 2 `shouldBe` ("1 sheep...2 sheep..." :: String)
        it "3 sheep" $ do
            countSheep 3 `shouldBe` ("1 sheep...2 sheep...3 sheep..." :: String)
            
-- the following line is optional for 8.2
main = hspec spec

module BonusSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Bonus

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "checks for bonus" $ do
        it "a few simple checks" $ do
            iHazBonus 100.0 True `shouldBe` "$1000.0"
            iHazBonus 100.0 False `shouldBe` "$100.0"
            

  
-- the following line is optional for 8.2
main = hspec spec

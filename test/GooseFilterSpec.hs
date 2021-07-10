module GooseFilterSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import GooseFilter

spec :: Spec
spec = do
    describe "gooseFilter" $ do
        it "handles simple cases" $ do
            gooseFilter ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"] `shouldBe` ["Mallard", "Hook Bill", "Crested", "Blue Swedish"]
            gooseFilter ["Mallard", "Barbary", "Hook Bill", "Blue Swedish", "Crested"] `shouldBe` ["Mallard", "Barbary", "Hook Bill", "Blue Swedish", "Crested"]
            gooseFilter ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"] `shouldBe` []
            
main = hspec spec

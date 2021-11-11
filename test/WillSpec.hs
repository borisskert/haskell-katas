module WillSpec where

import Test.Hspec
import Test.QuickCheck
import Will

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    willYou False False False `shouldBe` False
    willYou False False True `shouldBe` True
    willYou False True False `shouldBe` False
    willYou False True True `shouldBe` True
    willYou True False False `shouldBe` False
    willYou True False True `shouldBe` True
    willYou True True False `shouldBe` True
    willYou True True True `shouldBe` False
    
-- the following line is optional for 8.2
main = hspec spec

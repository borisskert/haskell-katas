module ASCIISpec where

import Test.Hspec
import ASCII

spec :: Spec
spec = do
  it "finds the ascii" $ do
    getASCII('L') `shouldBe` 76
    getASCII('M') `shouldBe` 77
    getASCII('N') `shouldBe` 78
    getASCII('#') `shouldBe` 35
    getASCII('$') `shouldBe` 36
    getASCII('%') `shouldBe` 37
  
  
-- the following line is optional for 8.2
main = hspec spec

module SF114Spec where

import Test.Hspec
import SF114

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the char" $ do
    abacaba 1 `shouldBe` 'a'
    abacaba 2 `shouldBe` 'b'
    abacaba 3 `shouldBe` 'a'
    abacaba 4 `shouldBe` 'c'
    abacaba 5 `shouldBe` 'a'
    abacaba 6 `shouldBe` 'b'
    abacaba 7 `shouldBe` 'a'
    abacaba 8 `shouldBe` 'd'
    abacaba 9 `shouldBe` 'a'
    abacaba 12 `shouldBe` 'c'
    abacaba 16 `shouldBe` 'e'
   
-- the following line is optional for 8.2
main = hspec spec

module SwitcherooSpec where

import Test.Hspec
import Switcheroo

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on a few fixed cases" $ do
    switcheroo "abc" `shouldBe` "bac"
    switcheroo "aaabcccbaaa" `shouldBe` "bbbacccabbb"
    switcheroo "ccccc" `shouldBe` "ccccc"
    switcheroo "abababababababab" `shouldBe` "babababababababa"
    switcheroo "aaaaa" `shouldBe` "bbbbb"
 
-- the following line is optional for 8.2
main = hspec spec

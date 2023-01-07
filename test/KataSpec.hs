module KataSpec where

import Kata (decrypt)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example test" $ do
      decrypt "$aaaa#bbb*ccfff!z" `shouldBe` "43200300000000000000000001"
      decrypt "z$aaa#ccc%eee1234567890" `shouldBe` "30303000000000000000000001"
      decrypt "" `shouldBe` "00000000000000000000000000"

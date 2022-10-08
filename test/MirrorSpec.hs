module MirrorSpec where

import Test.Hspec
import Mirror

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    mirror "Codewars" `shouldBe` "************\n* srawedoC *\n************"
    mirror "Hello World" `shouldBe` "*********\n* olleH *\n* dlroW *\n*********"
    mirror "emosewA !ataK" `shouldBe` "***********\n* Awesome *\n* Kata!   *\n***********"
    mirror "msxyrqtbucwoisqc pqbztjg  ow ijsopgxc   c  yo" `shouldBe` "********************\n* cqsiowcubtqryxsm *\n* gjtzbqp          *\n*                  *\n* wo               *\n* cxgposji         *\n*                  *\n*                  *\n* c                *\n*                  *\n* oy               *\n********************"

-- the following line is optional for 8.2
main = hspec spec

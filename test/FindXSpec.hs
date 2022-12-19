module FindXSpec where
import FindX
import Test.Hspec

spec = do
  describe "FindX" $ do
    it "Basic tests" $ do
                    --       /n   /n
      findX 1 `shouldBe` 1 -- 1 -- 1
      findX 2 `shouldBe` 16 -- 8 -- 4
      findX 3 `shouldBe` 63 -- 21 -- 7
      findX 4 `shouldBe` 160 -- 40 -- 10
      findX 5 `shouldBe` 325 -- 65 -- 13
      findX 6 `shouldBe` 576 -- 96 -- 16
      findX 7 `shouldBe` 931 -- 133 -- 19
      findX 8 `shouldBe` 1408 -- 176 -- 221
      findX 9 `shouldBe` 2025
      findX 10 `shouldBe` 2800
      findX 11 `shouldBe` 3751
      findX 12 `shouldBe` 4896
      findX 13 `shouldBe` 6253
      findX 15 `shouldBe` 9675      
      findX 66172 `shouldBe` 869239918694176
      findX 99999 `shouldBe` 2999890001299995
      findX 999999 `shouldBe` 2999989000012999995

module EvenSpec where

import Even (isEven)
import Test.Hspec
import Text.Printf (printf)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "isEven 0" $ isEven 0 `shouldBe` True
    it "isEven 0.5" $ isEven 0.5 `shouldBe` False
    it "isEven 1" $ isEven 1 `shouldBe` False
    it "isEven 2" $ isEven 2 `shouldBe` True
    it "isEven (-4)" $ isEven (-4) `shouldBe` True
    it "isEven 15" $ isEven 15 `shouldBe` False
    it "isEven 20" $ isEven 20 `shouldBe` True
    it "isEven 220" $ isEven 220 `shouldBe` True
    it "isEven 222222221" $ isEven 222222221 `shouldBe` False
    it "isEven 500000000" $ isEven 500000000 `shouldBe` True

module SF154Spec where

import Test.Hspec
import SF154

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on some fixed tests" $ do
    zeroAndOne "01010" `shouldBe` 1
    zeroAndOne "11101111" `shouldBe` 6
    zeroAndOne "01" `shouldBe` 0
    zeroAndOne "10" `shouldBe` 0
    zeroAndOne "110110" `shouldBe` 2


-- the following line is optional for 8.2
main = hspec spec

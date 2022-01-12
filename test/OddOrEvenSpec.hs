module OddOrEvenSpec (spec) where

import OddOrEven (oddOrEven)
import Preloaded (Parity(..))
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    oddOrEven 1 `shouldBe` EITHER
    oddOrEven 3 `shouldBe` EITHER
    oddOrEven 5 `shouldBe` EITHER
    oddOrEven 6 `shouldBe` ODD
    oddOrEven 8 `shouldBe` EVEN
    oddOrEven 9 `shouldBe` EITHER

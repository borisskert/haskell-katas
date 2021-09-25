module SearchForLettersSpec (spec) where

import SearchForLetters (search)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    search "a **&  bZ" `shouldBe` "11000000000000000000000001"
    search "" `shouldBe` "00000000000000000000000000"
    search "\144748" `shouldBe` "00000000000000000000000000"

module AsciiSpec where

import Test.Hspec
import Ascii

spec :: Spec
spec = do
  it "finds a single A" $ do
    getChar' 65 `shouldBe` 'A'

-- the following line is optional for 8.2
main = hspec spec

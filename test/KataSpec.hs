module KataSpec (spec) where

import Test.Hspec
import Kata (mouthSize)

spec :: Spec
spec = do
  it "Basic tests" $ do
    mouthSize "toucan" `shouldBe` "wide"
    mouthSize "ant bear" `shouldBe` "wide"
    mouthSize "alligator" `shouldBe` "small"
    mouthSize "ALLIGaTOR" `shouldBe` "small"

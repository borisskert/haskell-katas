module MouthSizeSpec (spec) where

import Test.Hspec
import MouthSize (mouthSize)

spec :: Spec
spec = do
  it "Basic tests" $ do
    mouthSize "toucan" `shouldBe` "wide"
    mouthSize "ant bear" `shouldBe` "wide"
    mouthSize "alligator" `shouldBe` "small"
    mouthSize "ALLIGaTOR" `shouldBe` "small"

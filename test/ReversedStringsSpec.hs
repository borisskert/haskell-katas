module ReversedStringsSpec where

import ReversedStrings
import Test.Hspec

spec :: Spec
spec = do
  it "Sample tests" $ do
    solution "world" `shouldBe` "dlrow"

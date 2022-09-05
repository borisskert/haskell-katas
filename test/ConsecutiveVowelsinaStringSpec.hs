module ConsecutiveVowelsinaStringSpec (spec) where

import ConsecutiveVowelsinaString (getTheVowels)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    getTheVowels "agrtertyfikfmroyrntbvsukldkfa" `shouldBe` 6
    getTheVowels "erfaiekjudhyfimngukduo" `shouldBe` 4

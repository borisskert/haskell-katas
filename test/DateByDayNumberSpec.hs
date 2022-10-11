module DateByDayNumberSpec (spec) where

import DateByDayNumber (getDay)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    getDay  41 False `shouldBe` "February, 10"
    getDay  60 False `shouldBe` "March, 1"
    getDay  60  True `shouldBe` "February, 29"
    getDay 365 False `shouldBe` "December, 31"
    getDay 366  True `shouldBe` "December, 31"
  it "more example tests" $ do
    getDay  15 False `shouldBe` "January, 15"
    getDay  59 False `shouldBe` "February, 28"

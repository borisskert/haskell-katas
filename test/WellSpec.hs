module WellSpec (spec) where

import Test.Hspec
import Well

spec :: Spec
spec = do
  it "handles fixed cases " $ do
    well ["bad", "bad", "bad"] `shouldBe` "Fail!"
    well ["good", "bad", "bad", "bad", "bad"] `shouldBe` "Publish!"
    well ["good", "bad", "bad", "bad", "bad", "good", "bad", "bad", "good"] `shouldBe` "I smell a series!"
    well ["bad","good","bad","bad","bad","bad","bad","good","bad","bad","bad"] `shouldBe` "Publish!"

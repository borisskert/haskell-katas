module TitleCaseSpec where

import Test.Hspec
import TitleCase

spec :: Spec
spec = do
  describe "titleCase" $ do
    it "Example test" $ do
      titleCase "a an the of" "a clash of KINGS" `shouldBe` "A Clash of Kings"
      titleCase "" "" `shouldBe` ""
      titleCase "BC" "a bc" `shouldBe` "A bc"
      titleCase "a an the OF" "a clash of KINGS" `shouldBe` "A Clash of Kings"

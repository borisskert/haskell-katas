module Codewars.Lambda4fun.ParseHtmlColorSpec where

import Codewars.Lambda4fun.ParseHtmlColor (parseHtmlColor)
import Data.Map.Strict (Map, fromList, (!))
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "should parse a 6-digit color" $
      parseHtmlColor "#80FFA0" `shouldBe` fromList [('r',128), ('g',255), ('b',160)]
    it "should parse a 3-digit color" $
      parseHtmlColor "#3B7" `shouldBe` fromList [('r',51), ('g',187), ('b',119)]
    it "should parse a preset color" $
      parseHtmlColor "LimeGreen" `shouldBe` fromList [('r',50), ('g',205), ('b',50)]

module Codewars.BackspacesInStringSpec (spec, main) where

import Test.Hspec
import Codewars.BackspacesInString

spec :: Spec
spec = do
  describe "cleanString" $ do
    it "should work correctly" $ do
      cleanString "abc#d##c" `shouldBe` "ac"
      cleanString "abc####d##c#" `shouldBe` ""

main :: IO ()
main = hspec spec

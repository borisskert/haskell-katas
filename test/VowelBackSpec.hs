module VowelBackSpec where

import Test.Hspec
import VowelBack

spec = do
  describe "Vowel Back" $ do
    it "Basic tests" $ do
      vowelBack "testcase" `shouldBe` "tabtbvba"
      vowelBack "codewars" `shouldBe` "bnaafvab"
      vowelBack "exampletesthere" `shouldBe` "agvvyuatabtqaaa"
      vowelBack "returnofthespacecamel" `shouldBe` "aatpawnftqabyvbabvvau"
      vowelBack "bringonthebootcamp" `shouldBe` "kaiwpnwtqaknntbvvy"
      vowelBack "weneedanofficedog" `shouldBe` "fawaaavwnffibaanp"

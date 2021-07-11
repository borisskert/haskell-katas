module Codewars.Kata.ShortcutSpec where
import Codewars.Kata.Shortcut
import Test.Hspec

spec :: Spec
spec = do
    describe "shortcut" $ do
        it "should work for the examples" $ do
            shortcut "codewars" `shouldBe` "cdwrs"
            shortcut "goodbye"  `shouldBe` "gdby"
        it "should keep non-alphanumeric" $ do
            shortcut "hi, how are you?" `shouldBe` "h, hw r y?"
            shortcut ":;,[]'!@$%^&*()?" `shouldBe` ":;,[]'!@$%^&*()?"
        it "should return the empty list if given only vowels" $ do
            shortcut "aeiou" `shouldBe` ""

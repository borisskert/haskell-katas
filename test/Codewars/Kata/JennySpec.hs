module Codewars.Kata.JennySpec where
import Codewars.Kata.Jenny
import Test.Hspec

spec :: Spec
spec = do
  describe "jenny's greeting function" $ do
    it "should greet the person" $ do
      greet "Jim"   `shouldBe` "Hello, Jim!"
      greet "Jane"  `shouldBe` "Hello, Jane!"
      greet "Simon" `shouldBe` "Hello, Simon!"

    it "should greet Johnny a little bit more special" $ do
      greet "Johnny" `shouldBe` "Hello, my love!"

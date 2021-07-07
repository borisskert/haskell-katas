module Codewars.Kata.HelloWorldSpec where
import Codewars.Kata.HelloWorld (greet)
import Test.Hspec

spec :: Spec
spec = do
  describe "greet" $ do
    it "should greet the world" $ 
      greet `shouldBe` "hello world!"
    
    it "should greet the ... world?" $
      "Woah! " ++ greet `shouldBe` "Woah! hello world!"

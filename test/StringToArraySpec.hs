module StringToArraySpec (spec) where

import Test.Hspec
import StringToArray
    
spec :: Spec
spec = do
  it "Fixed tests" $ do
    stringToArray "Robin Singh" `shouldBe` ["Robin", "Singh"]
    stringToArray "CodeWars" `shouldBe` ["CodeWars"]
    stringToArray "I love arrays they are my favorite" `shouldBe` ["I", "love", "arrays", "they", "are", "my", "favorite"]
    stringToArray "1 2 3" `shouldBe` ["1", "2", "3"]
    stringToArray "" `shouldBe` []

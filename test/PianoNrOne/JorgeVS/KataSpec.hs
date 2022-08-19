module PianoNrOne.JorgeVS.KataSpec where
import Test.Hspec
import PianoNrOne.JorgeVS.Kata
spec :: Spec
spec = do
   describe "Sample test" $ do
     it "First Test" $ do
      (blackOrWhiteKey 1) `shouldBe` "white"
     it "Second Test" $ do
      (blackOrWhiteKey 5 ) `shouldBe` "black"
     it "Third Test" $ do
      (blackOrWhiteKey 12 ) `shouldBe` "black"
     it "Fourth Test" $ do
      (blackOrWhiteKey 42) `shouldBe` "white"
     it "Fifth Test" $ do
      (blackOrWhiteKey 88 ) `shouldBe` "white"
     it "Sixth Test" $ do
      (blackOrWhiteKey 89 ) `shouldBe` "white"
     it "Seventh Test" $ do
      (blackOrWhiteKey 92) `shouldBe` "white"
     it "Eigth Test" $ do
      (blackOrWhiteKey 100 ) `shouldBe` "black"
     it "Ninth Test" $ do
      (blackOrWhiteKey 111 ) `shouldBe` "white"
     it "Tenth Test" $ do
      (blackOrWhiteKey 200) `shouldBe` "black"
     it "Eleventh Test" $ do
      (blackOrWhiteKey 2017 ) `shouldBe` "white"

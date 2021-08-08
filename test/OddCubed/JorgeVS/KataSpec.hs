module OddCubed.JorgeVS.KataSpec where
import Test.Hspec
import OddCubed.JorgeVS.Kata

spec :: Spec
spec = do
   describe "Sample test" $ do
     it "First Test" $ do
       (oddCubed [-5,-5,5,5] ) `shouldBe` 0
   describe "Sample test" $ do
     it "Second Test" $ do
       (oddCubed [1,2,3,4] ) `shouldBe` 28
   describe "Sample test" $ do
     it "Empty list" $ do
       (oddCubed [] ) `shouldBe` 0
   describe "Sample test" $ do
     it "Empty list" $ do
       (oddCubed [23,-65,68,74,-2,90,-6,47,-79,-77]) `shouldBe` -1108207

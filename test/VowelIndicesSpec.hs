module VowelIndicesSpec where
import VowelIndices (vowelIndices)   

import Test.Hspec
import Text.Printf (printf)

testVowelIndices :: String -> [Integer] -> Spec
testVowelIndices word indices = 
    it (printf "should return indices for word: %s " word) $
        vowelIndices word `shouldBe` indices

spec :: Spec
spec = do
    describe "vowelIndices" $ do
      testVowelIndices "super" [2,4]
      testVowelIndices "crIssUm" [3,6]
      testVowelIndices "bialy" [2,3,5]

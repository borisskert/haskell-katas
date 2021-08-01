module AlphabetSymmSpec (spec, main) where
import AlphabetSymm
import Test.Hspec

main = hspec spec
spec = do
  describe "Alphabet Symmetry" $ do
    it "Basic tests" $ do     
      solve ["abc"] `shouldBe` [3]
      solve ["abode","ABc","xyzD"] `shouldBe` [4,3,1]
      solve ["abide","ABc","xyz"] `shouldBe` [4,3,0]
      solve ["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"] `shouldBe` [6,5,7]
      solve ["encode","abc","xyzD","ABmD"] `shouldBe` [1, 3, 1, 3]

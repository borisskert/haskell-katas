module MultipleOfIdxSpec where
import MultipleOfIdx
import Test.Hspec

spec :: Spec
spec = do
  describe "Multiple of Index" $ do
    it "Basic tests" $ do
      multipleOfIndex [22, -6, 32, 82, 9, 25] `shouldBe` [-6, 32, 25]
      multipleOfIndex [68, -1, 1, -7, 10, 10] `shouldBe` [-1, 10]
      multipleOfIndex [11, -11] `shouldBe` [-11]
      multipleOfIndex [-56,-85,72,-26,-14,76,-27,72,35,-21,-67,87,0,21,59,27,-92,68] `shouldBe` [-85, 72, 0, 68]
      multipleOfIndex [28,38,-44,-99,-13,-54,77,-51] `shouldBe` [38, -44, -99]
      multipleOfIndex [-1,-49,-1,67,8,-60,39,35] `shouldBe` [-49, 8, -60, 35]

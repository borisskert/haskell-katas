module PowerOfFourSpec where
import PowerOfFour (isPowerOf4)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isPowerOf4" $ do
    it "should work for some examples" $ do
      isPowerOf4 0 `shouldBe` False
      isPowerOf4 1 `shouldBe` True
      isPowerOf4 2 `shouldBe` False
      isPowerOf4 3 `shouldBe` False
      isPowerOf4 4 `shouldBe` True
      isPowerOf4 5 `shouldBe` False
      isPowerOf4 6 `shouldBe` False
      isPowerOf4 7 `shouldBe` False
      isPowerOf4 8 `shouldBe` False
      isPowerOf4 9 `shouldBe` False
      isPowerOf4 10 `shouldBe` False
      isPowerOf4 11 `shouldBe` False
      isPowerOf4 12 `shouldBe` False
      isPowerOf4 13 `shouldBe` False
      isPowerOf4 14 `shouldBe` False
      isPowerOf4 15 `shouldBe` False
      isPowerOf4 16 `shouldBe` True
      isPowerOf4 1024 `shouldBe` True
      isPowerOf4  102 `shouldBe` False
      isPowerOf4   64 `shouldBe` True
    it "should work for random powers of four" $ do  
      property $ forAll (arbitrary `suchThat` (>=0)) $ \x ->
        isPowerOf4 (4^(x :: Int)) `shouldBe` True
    it "should work for random non powers of four" $ do  
      property $ forAll (arbitrary `suchThat` (>=0)) $ \x ->
        isPowerOf4 ((4^(x :: Int)) + 1) `shouldBe` False

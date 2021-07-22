module DivisorsSpec where
import Divisors (divisors)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "divisors" $ do
    it "should return 1 for 1"  $ divisors 1  `shouldBe` 1
    it "should return 3 for 4"  $ divisors 4  `shouldBe` 3
    it "should return 2 for 5"  $ divisors 5  `shouldBe` 2
    it "should return 6 for 12" $ divisors 12 `shouldBe` 6
    it "should return 8 for 30" $ divisors 30 `shouldBe` 8  

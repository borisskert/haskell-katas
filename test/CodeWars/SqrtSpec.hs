module CodeWars.SqrtSpec where
import CodeWars.Sqrt (sqrtInt)
import Test.Hspec
import Test.Hspec.Codewars
import Test.QuickCheck

spec :: Spec
spec = do
  describe "sqrtInt" $ do
    it "should work for the examples" $ do
      sqrtInt 4 `shouldBe` Right 2
      sqrtInt 5 `shouldBe` Left (2,3)
      
    it "should work for integral roots" $
      property $ forAll (arbitrary `suchThat` (>= 0)) $ \x ->
        sqrtInt (x * x) `shouldBe` Right (x :: Int)
        
    it "should work for non-integral roots" $
      property $ forAll (arbitrary `suchThat` (>= 1)) $ \x ->
        sqrtInt (x * x + 1) `shouldBe` Left (x, x + 1 :: Int)
    
    it "should return a range with size one" $ 
      property $ forAll (arbitrary `suchThat` (>= 0)) $ \x ->
        sqrtInt (x :: Int) `shouldSatisfy` (either (\(a,b) -> b == succ a) (const True))

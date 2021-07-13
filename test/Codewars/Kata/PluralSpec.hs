module Codewars.Kata.PluralSpec where
import Codewars.Kata.Plural.Types (Grammar(..))
import Codewars.Kata.Plural (plural)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "plural" $ do
    it "should categorize 0 as plural"   $ plural 0 `shouldBe` Plural
    it "should categorize 1 as singular" $ plural 1 `shouldBe` Singular    
    it "should categorize 2 as plural"   $ plural 2 `shouldBe` Plural
    it "should categorize any large number as plural" $ property $ 
      forAll (choose (10^100,10^1000))   $ \x -> plural (x :: Integer) `shouldBe` Plural
    it "should categorize fractional number as plural" $ property $ 
      forAll (choose (2,10))             $ \x -> plural (x :: Double) `shouldBe` Plural

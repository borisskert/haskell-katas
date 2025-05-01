module PairOfGlovesSpec (spec) where

import PairOfGloves (numberOfPairs)
import Preloaded (Colour'' (..))
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    numberOfPairs [Red'', Green'', Red'', Blue'', Blue''] `shouldBe` 2
    numberOfPairs [Red'', Red'', Red'', Red'', Red'', Red''] `shouldBe` 3
  it "more example tests" $ do
    numberOfPairs [Red'', Red''] `shouldBe` 1
    numberOfPairs [Red'', Green'', Blue''] `shouldBe` 0
    numberOfPairs [Gray'', Black'', Purple'', Purple'', Gray'', Black''] `shouldBe` 3

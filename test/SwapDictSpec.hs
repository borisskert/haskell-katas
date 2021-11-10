module SwapDictSpec where

import Data.List (sort)
import qualified Data.Map as Map
import SwapDict (swapDict)
import Test.Hspec
import Data.Map (fromList)

spec :: Spec
spec = do
  it "the example from the description" $ do
    let input =
          Map.fromList
            [ ("Ice", "Cream")
            , ("Age", "21")
            , ("Light", "Cream")
            , ("Double", "Cream")
            ]
    let expected =
          Map.fromList
            [ ("Cream", ["Ice", "Double", "Light"])
            , ("21", ["Age"])
            ]
    sort <$> swapDict input `shouldBe` sort <$> expected

  it "failing" $ do
    swapDict (fromList [("","JaSSg"),("a",""),("b","JaSSg")]) `shouldBe` (fromList [("",["a"]),("JaSSg",["", "b"])])

  it "failing 2" $ do
    swapDict (fromList [("","4S429Oc"),("a",""),("b","4S429Oc")]) `shouldBe` (fromList [("",["a"]),("4S429Oc",["", "b"])])

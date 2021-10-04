module Cartesian.Neighbor.JorgeVSSpec where
import Cartesian.Neighbor.JorgeVS
import Test.Hspec
import Data.List

spec = do
  describe "Simple Test" $
     it " 1 1 " $ do
     sort (cartesianNeighbor 1 1) `shouldBe` [(0,0),(0,1),(0,2),(1,0),(1,2),(2,0),(2,1),(2,2)]

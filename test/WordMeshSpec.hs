module WordMeshSpec where

import WordMesh (wordMesh)
import Test.Hspec

spec :: Spec
spec = do
  it "Example tests" $ do
    wordMesh ["beacon","condominium","umbilical","california"] `shouldBe` Just "conumcal"
    wordMesh ["allow","lowering","ringmaster","terror"] `shouldBe` Just "lowringter"
    wordMesh ["abandon","donation","onion","ongoing"] `shouldBe` Just "dononon"
    wordMesh ["jamestown","ownership","hippocampus","pushcart","cartographer","pheromone"] `shouldBe` Just "ownhippuscartpher"
    wordMesh ["jamestown","ownership","abandon"] `shouldBe` Nothing

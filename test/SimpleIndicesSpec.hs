module SimpleIndicesSpec where
import SimpleIndices
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple string indices" $ do
    it "Basic tests" $ do
      solve "((1)23(45))(aB)" 0 `shouldBe` Just 10
      solve "((1)23(45))(aB)" 1 `shouldBe` Just 3
      solve "((1)23(45))(aB)" 2 `shouldBe` Nothing
      solve "((1)23(45))(aB)" 6 `shouldBe` Just 9
      solve "((1)23(45))(aB)" 11 `shouldBe` Just 14
      solve "(g(At)IO(f)(tM(qk)YF(n)Nr(E)))" 11 `shouldBe` Just 28
      solve "(g(At)IO(f)(tM(qk)YF(n)Nr(E)))" 0 `shouldBe` Just 29
      solve "(>_(va)`?(h)C(as)(x(hD)P|(fg)))" 19 `shouldBe` Just 22

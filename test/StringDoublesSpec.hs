module StringDoublesSpec where
import StringDoubles
import Test.Hspec

spec :: Spec
spec = do
  describe "String Doubles" $ do
    it "Basic tests" $ do
      solve "abbbzz" `shouldBe` "ab"
      solve "zzzzykkkd" `shouldBe` "ykd"
      solve "abbcccdddda" `shouldBe` "aca"
      solve "vvvvvoiiiiin" `shouldBe` "voin"
      solve "rrrmooomqqqqj" `shouldBe` "rmomj"
      solve "xxbnnnnnyaaaaam" `shouldBe` "bnyam"
      solve "kbwxlbrhsqjhiccyulaalefbvavzqyqv" `shouldBe` "kbwxlbrhsqjhiyuefbvavzqyqv"

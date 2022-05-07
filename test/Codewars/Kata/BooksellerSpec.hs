module Codewars.Kata.BooksellerSpec where
import Codewars.Kata.Bookseller.Types
import Codewars.Kata.Bookseller (stocklist)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "stocklist" $ do    
    it "should work for some examples" $ do
      let stock = [Stock "ABAR" 200, Stock "CDXE" 500, Stock "BKWR" 250, Stock "BTSQ" 890, Stock "DRTY" 600]
      stocklist stock ['A','B'] `shouldBe` [('A',200), ('B',1140)]
      stocklist stock ['C','X'] `shouldBe` [('C',500), ('X',0)]
      stocklist stock ['Y','X'] `shouldBe` [('Y',0), ('X',0)]
      stocklist stock ['C']     `shouldBe` [('C', 500)]
      stocklist stock []        `shouldBe` []
      stocklist [] "a"          `shouldBe` []
      stocklist [Stock "SWRJNIJ" 7,Stock "KVMRVAZ" 2,Stock "HLQFFEM" 6,Stock "ABKCDAF" 10]
                  "OANHHK" `shouldBe` [('O',0),('A',10),('N',0),('H',6),('H',6),('K',2)]
      
    -- it "should handle empty lists correctly" $ 
    --   conjoin [ property $ \xs -> stocklist [] xs `shouldBe` []
    --           , property $
    --               forAll (arbitrary `suchThat` (>3)) $ \i ->
    --               forAll (stockOf i)                 $ \stock ->
    --                 stocklist stock [] `shouldBe` []
    --           ]

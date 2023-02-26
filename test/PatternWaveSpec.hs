module PatternWaveSpec where

import Test.Hspec
import PatternWave (draw)

spec :: Spec
spec = do
  describe "Fixed tests" $ do
    it "draw([1,2,3,4]" $ do
      draw [1,2,3,4] `shouldBe'` "□□□■\n□□■■\n□■■■\n■■■■"
    it "draw([1,2,3,3,2,1]" $ do
      draw [1,2,3,3,2,1] `shouldBe'` "□□■■□□\n□■■■■□\n■■■■■■"
    it "draw([1,2,3,3,2,1,1,2,3,4,5,6,7]" $ do
      draw [1,2,3,3,2,1,1,2,3,4,5,6,7] `shouldBe'` "□□□□□□□□□□□□■\n□□□□□□□□□□□■■\n□□□□□□□□□□■■■\n□□□□□□□□□■■■■\n□□■■□□□□■■■■■\n□■■■■□□■■■■■■\n■■■■■■■■■■■■■"
    it "draw([1,2,3,5,3,1,2,4,6,5,4,2,3,5,2,14]" $ do
      draw [5,3,1,2,4,6,5,4,2,3,5,2,1] `shouldBe'` "□□□□□■□□□□□□□\n■□□□□■■□□□■□□\n■□□□■■■■□□■□□\n■■□□■■■■□■■□□\n■■□■■■■■■■■■□\n■■■■■■■■■■■■■"
    it "draw([1,0,1,0,1,0,1,0]" $ do
      draw [1,0,1,0,1,0,1,0] `shouldBe'` "■□■□■□■□"
    it "draw([]" $ do
      draw [] `shouldBe'` ""

shouldBe' :: String -> String -> Expectation
shouldBe' actual expected = if actual == expected
                            then return ()
                            else expectationFailure msg
                            where msg = "Expected\n" ++ expected ++ "\nbut got\n" ++ actual

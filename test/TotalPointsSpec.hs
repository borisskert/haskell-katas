module TotalPointsSpec where
import TotalPoints
import Test.Hspec

spec = do
  describe "Total amount of points" $ do
    it "Basic tests" $ do
      points ["1:0","2:0","3:0","4:0","2:1","3:1","4:1","3:2","4:2","4:3"] `shouldBe` 30
      points ["1:1","2:2","3:3","4:4","2:2","3:3","4:4","3:3","4:4","4:4"] `shouldBe` 10
      points ["0:1","0:2","0:3","0:4","1:2","1:3","1:4","2:3","2:4","3:4"] `shouldBe` 0
      points ["1:0","2:0","3:0","4:0","2:1","1:3","1:4","2:3","2:4","3:4"] `shouldBe` 15
      points ["1:0","2:0","3:0","4:4","2:2","3:3","1:4","2:3","2:4","3:4"] `shouldBe` 12

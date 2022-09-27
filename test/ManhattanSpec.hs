module ManhattanSpec where
import Manhattan
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing solution:" $ do
    it "Should compute manhattan distance:" $ do
      manhattanDistance (1, 1) (2, 1) `shouldBe` 1
      manhattanDistance (1, 1) (1, 1) `shouldBe` 0
      manhattanDistance (5, 4) (3, 2) `shouldBe` 4
      manhattanDistance (1, 1) (0, 3) `shouldBe` 3

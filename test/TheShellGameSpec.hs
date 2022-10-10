module TheShellGameSpec where
import TheShellGame
import Test.Hspec

spec :: Spec
spec = do
  describe "An empty game" $
    it "An empty swap set doesn't move the ball" $ do
      findTheBall 5 [] `shouldBe` 5
  describe "Some simple games" $
    it "A simple game" $ do
      findTheBall 0 [(0, 1), (2, 1), (0, 1)] `shouldBe` 2

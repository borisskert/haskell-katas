module Codewars.Kata.BouncingBallSpec (spec, main) where
import Codewars.Kata.BouncingBall
import Test.Hspec

main = hspec spec
spec = do
  describe "BouncingBall" $ do
    it "1st series" $ do
      bouncingBall 3.0 0.66 1.5 `shouldBe` 3
      bouncingBall 30.0 0.66 1.5 `shouldBe` 15
      bouncingBall 10.5 5.0 20.0 `shouldBe` -1
      bouncingBall 12.176714364114885 (-0.50598998475799) 90.43338019946621 `shouldBe` -1
      bouncingBall 27.86515654310913 0.7026689624555289 110.12053062532746 `shouldBe` -1
      bouncingBall 2.0 0.5 1.0 `shouldBe` 1
      bouncingBall 1.55 0.66 1.5 `shouldBe` 1
      bouncingBall 10.5 0.66 10.0 `shouldBe` 1
      bouncingBall 10.5 0.999 10.0 `shouldBe` 97


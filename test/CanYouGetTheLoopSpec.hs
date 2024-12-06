module CanYouGetTheLoopSpec (spec, main) where
import CanYouGetTheLoop.Types
import CanYouGetTheLoop
import Test.Hspec

main = hspec spec
spec = do
  describe "loopChain" $ do
    it "finds loop in list of 4 nodes" $ do
      let node1 = Node 1 node2
          node2 = Node 2 node3
          node3 = Node 3 node4
          node4 = Node 4 node2
      loopSize node1 `shouldBe` 3

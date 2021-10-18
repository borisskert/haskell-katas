module ReplicationSpec where

import Replication
import Test.Hspec

spec :: Spec
spec = do
  it "replicate numbers" $ do
    (recursivelyReplicate 1 5) `shouldBe` ([5] :: [Integer])
    (recursivelyReplicate 5 3) `shouldBe` ([3, 3, 3, 3, 3] :: [Integer])
    (recursivelyReplicate (-1) 5) `shouldBe` ([] :: [Integer])

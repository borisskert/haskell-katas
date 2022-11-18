module SimplePrimeStreamSpec where

import SimplePrimeStream
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple Prime Streaming" $ do
    it "Basic tests" $ do
      solve 2 2 `shouldBe` "57"
      solve 10 3 `shouldBe` "192"
      solve 20 9 `shouldBe` "414347535"
      solve 30 12 `shouldBe` "616771737983"
      solve 40 8 `shouldBe` "83899710"
      solve 50 6 `shouldBe` "031071"

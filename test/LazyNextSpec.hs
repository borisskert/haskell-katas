module LazyNextSpec where
import LazyNext (next)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "next" $ do
    it "should work on some examples" $ do
      next 7 [1..10000] `shouldBe` (Just 8)
      next "Bob" ["Joe", "Bob", "Sally"]  `shouldBe` (Just "Sally")
      next 'd' "abc" `shouldBe` Nothing

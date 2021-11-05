module Remove4Spec where
import Remove4 (remove)
import Test.Hspec


spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      remove "Hi!"          `shouldBe` "Hi!"
      remove "Hi! Hi!"      `shouldBe` "Hi Hi!!"
      remove "Hi! Hi! Hi!"  `shouldBe` "Hi Hi Hi!!!"
      remove "Hi! !Hi Hi!"  `shouldBe` "Hi Hi Hi!!!"
      remove "Hi! Hi!! Hi!" `shouldBe` "Hi Hi Hi!!!!"

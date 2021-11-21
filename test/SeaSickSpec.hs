module SeaSickSpec where
import Test.Hspec
import SeaSick (seaSick)

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      seaSick "~" `shouldBe` "No Problem"
      seaSick "_~~~~~~~_~__~______~~__~~_~~" `shouldBe` "Throw Up"
      seaSick "______~___~_" `shouldBe` "Throw Up"
      seaSick "____" `shouldBe` "No Problem"
      seaSick "_~~_~____~~~~~~~__~_~" `shouldBe` "Throw Up"
      seaSick  "~~~~~_~~~~" `shouldBe` "No Problem"

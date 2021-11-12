module FriendsSpec where
import Friends
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
    describe "The friends function" $ do
      it "should work for example test cases" $ do
        friends 0 `shouldBe` 0
        friends 1 `shouldBe` 0
        friends 2 `shouldBe` 0
        friends 3 `shouldBe` 1
        friends 4 `shouldBe` 1
        friends 5 `shouldBe` 2
        friends 6 `shouldBe` 2
        friends 7 `shouldBe` 2
        friends 8 `shouldBe` 2
        friends 9 `shouldBe` 3
        friends 2570 `shouldBe` 11
        friends 25700 `shouldBe` 14
        friends 314997064 `shouldBe` 28
        friends 719694914 `shouldBe` 29
        friends 1000696969 `shouldBe` 29

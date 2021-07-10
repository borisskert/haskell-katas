module RemoveNSpec where
import RemoveN (remove)
import Test.Hspec

spec :: Spec
spec = do
    describe "Basic Tests" $
      it "should work with basic tests" $ do 
        (remove "Hi!" 1)                 `shouldBe` "Hi"
        (remove "Hi!!!" 100)             `shouldBe` "Hi"
        (remove "Hi!!!" 1)               `shouldBe` "Hi!!"
        (remove "Hi!!!" 100)             `shouldBe` "Hi"
        (remove "Hi! Hi!" 1)             `shouldBe` "Hi Hi!"
        (remove "!!!Hi !!hi!!! !hi" 1)   `shouldBe` "!!Hi !!hi!!! !hi"
        (remove "!!!Hi !!hi!!! !hi" 3)   `shouldBe` "Hi !!hi!!! !hi"
        (remove "!!!Hi !!hi!!! !hi" 5)   `shouldBe` "Hi hi!!! !hi"
        (remove "!!!Hi !!hi!!! !hi" 100) `shouldBe` "Hi hi hi"
        (remove "!Hi" 1)                 `shouldBe` "Hi"
        (remove "!Hi!" 1)                `shouldBe` "Hi!"
        (remove "!Hi!" 100)              `shouldBe` "Hi"

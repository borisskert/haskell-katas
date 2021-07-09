module GreetingSpec where
import Test.Hspec
import Greeting

spec :: Spec
spec = do
    describe "greeting" $ do
        it "makes a greeting" $ do
          greeting "Darwin" `shouldBe` "Hello, Darwin how are you doing today?"

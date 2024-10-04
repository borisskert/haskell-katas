module RemovingSpec where

import Removing (removeEveryOther)
import Test.Hspec

spec :: Spec
spec = do
  it "Fixed Tests" $ do
    removeEveryOther ["Hello", "Goodbye", "Hello Again"]
      `shouldBe` ["Hello", "Hello Again"]
    removeEveryOther [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      `shouldBe` [1, 3, 5, 7, 9]
    removeEveryOther [[1, 2]]
      `shouldBe` [[1, 2]]
    removeEveryOther [Left "Goodbye", Right ("Great", "Job")]
      `shouldBe` [Left "Goodbye"]

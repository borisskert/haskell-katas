module ReflectionsSpec (spec) where

import Test.Hspec
import Reflections (reflections)

spec :: Spec
spec = do
  it "Basic tests" $ do
    reflections 10 10 `shouldBe` True
    reflections 10 20 `shouldBe` False
    reflections 12 23 `shouldBe` False
    reflections 5 25 `shouldBe` True
    reflections 55 69 `shouldBe` True

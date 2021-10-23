module GuardingTheAlgoLandiaSpec (spec) where

import GuardingTheAlgoLandia (findNeededGuards)
import Test.Hspec

spec :: Spec
spec = do
  it "test already safe" $ findNeededGuards [True, True, False, True, False] `shouldBe` 0
  it "easy test" $ findNeededGuards [False, False, True, False, False] `shouldBe` 2
  it "third test" $ findNeededGuards [False, False, False, False, False] `shouldBe` 2

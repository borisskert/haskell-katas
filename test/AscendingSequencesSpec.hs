module AscendingSequencesSpec (spec) where

import Test.Hspec
import AscendingSequences

spec :: Spec
spec = do
  it "Example Tests" $ do
    solve 6 `shouldBe` 6
    solve 7 `shouldBe` 6
    solve 9 `shouldBe` 10
    solve 10 `shouldBe` 14
    solve 17 `shouldBe` 36
    solve 20 `shouldBe` 60
    solve 21 `shouldBe` 60
    solve 39 `shouldBe` 330
    solve 59 `shouldBe` 1294
    solve 432 `shouldBe` 11379220
    solve 594 `shouldBe` 73110222
    solve 953 `shouldBe` 1431034990
    solve 1000 `shouldBe` 1981471878

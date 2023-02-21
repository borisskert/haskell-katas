module ThinkingAndTestingSpec (spec) where

import Test.Hspec
import ThinkingAndTesting (testIt)

spec :: Spec
spec = do
  it "Example Tests" $ do
    -- Hmm.. 0 * 1 = 0
    testIt 0 1 `shouldBe` 0
    -- Yes, 1 * 2 = 2
    testIt 1 2 `shouldBe` 2
    -- I know, 5 * 6 = 30
    testIt 5 6 `shouldBe` 30
    -- What? 10 * 10 = 1 ?
    testIt 10 10 `shouldBe` 1
    -- Damn.. 200 * 200 = 4, 0 was omitted ?
    testIt 200 200 `shouldBe` 4
    -- Discover the mysteries of it ;-)
    testIt 12 34 `shouldBe` 21
    -- You can solve it
    testIt 123 45 `shouldBe` 54
    -- And click ATTEMPT for more challenge..
    testIt 415 551 `shouldBe` 110
    testIt 363 376 `shouldBe` 192
    testIt 162 105 `shouldBe` 54

module StringSubpatternRecognitionISpec (spec) where

import StringSubpatternRecognitionI (hasSubpattern)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    hasSubpattern "a" `shouldBe` False
    hasSubpattern "aa" `shouldBe` True
    hasSubpattern "aaaa" `shouldBe` True
    hasSubpattern "abcd" `shouldBe` False
    hasSubpattern "abababab" `shouldBe` True
    hasSubpattern "ababababa" `shouldBe` False
    hasSubpattern "123a123a123a" `shouldBe` True
    hasSubpattern "123A123a123a" `shouldBe` False
    hasSubpattern "abbaabbaabba" `shouldBe` True
    hasSubpattern "abbabbabba" `shouldBe` False
    hasSubpattern "abcdabcabcd" `shouldBe` False
    hasSubpattern "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" `shouldBe` True

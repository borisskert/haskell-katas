module StringPrefixAndSuffixSpec (spec) where

import Test.Hspec
import StringPrefixAndSuffix

spec :: Spec
spec = do
  it "example tests" $ do
    solve "abcd" `shouldBe` 0
    solve "abcda" `shouldBe` 1
    solve "abcdabc" `shouldBe` 3
    solve "abcabc" `shouldBe` 3
    solve "abcabca" `shouldBe` 1
    solve "aaaa" `shouldBe` 2
    solve "aa" `shouldBe` 1
    solve "a" `shouldBe` 0
    solve "kvdikksosquljrgbzpctkncfrxsdntngbstrwabbzgifedpbivhzyhpbiqqhoynwwkvhreqhwvzucszldodkkciypoxqqfsjutdngjnemxjgrqwrfkkzwoanyrqsvvgwzgnnxtpqyrpovgcuclmcgfkkvdikksosquljrgbzpctkncfrxsdntngbstrwabbzgifedpbivhzyhpbiqqhoynwwkvhreqhwvzucszl" `shouldBe` 80
    solve "accadaca" `shouldBe` 1
    solve "eexeee" `shouldBe` 2
    solve "eeeeeeeeexeeeeeeeeee" `shouldBe` 9

  it "sublist" $ do
    sublist 0 3 "abcdef" `shouldBe` "abc"
    sublist 0 4 "abcdef" `shouldBe` "abcd"
    sublist 3 6 "abcdef" `shouldBe` "def"

  it "prefix" $ do
    prefix 3 "abcdef" `shouldBe` "abc"
    suffix 3 "abcdef" `shouldBe` "def"

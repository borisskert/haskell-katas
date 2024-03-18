module RecursivelyReverseInsideParenthesesSpec (spec) where

import RecursivelyReverseInsideParentheses
  ( parse,
    reverseInParens,
  )
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    reverseInParens "h(el)lo" `shouldBe` "h(le)lo"
    reverseInParens "a ((d e) c b)" `shouldBe` "a (b c (d e))"
    reverseInParens "one (two (three) four)" `shouldBe` "one (ruof (three) owt)"
    reverseInParens "one (ruof ((rht)ee) owt)" `shouldBe` "one (two ((thr)ee) four)"
    reverseInParens "" `shouldBe` ""
    reverseInParens "( ( ) (()) )" `shouldBe` "( (()) ( ) )"

  it "should parse" $ do
    (show . parse) "hello" `shouldBe` "hello"
    (show . parse) "(hello)" `shouldBe` "(hello)"
    (show . parse) "h(el)lo" `shouldBe` "h(el)lo"
    (show . parse) "one (ruof ((rht)ee) owt)" `shouldBe` "one (ruof ((rht)ee) owt)"
    (show . parse) "( ( ) (()) )" `shouldBe` "( ( ) (()) )"

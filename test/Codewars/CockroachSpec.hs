module Codewars.CockroachSpec (spec, main) where
import Codewars.Cockroach

import Test.Hspec

testSpeed input answer =
  it ("should output " ++ (show answer) ++ " for " ++ (show input)) $
    cockroachSpeed input `shouldBe` answer

main = hspec spec
spec = do
  describe "Basic Tests" $ do
    testSpeed 1.08 30
    testSpeed 1.09 30
    testSpeed 0 0

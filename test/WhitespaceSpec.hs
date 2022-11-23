module WhitespaceSpec where

import Test.Hspec
import Whitespace (whitespaceNumber)

newtype Pretty = Pretty String deriving Eq
instance Show Pretty where
  show (Pretty s) = s >>= f
    where f ' ' = "[space]"
          f '\t' = "[tab]"
          f '\n' = "[LF]"
          f c = "[" ++ show c ++ "]"

x ?= y = Pretty x `shouldBe` Pretty y
infixl 3 ?=
spec :: Spec
spec = describe "Example tests" $ do
    specify "test for 1"  $ whitespaceNumber   1  ?= " \t\n"
    specify "test for 0"  $ whitespaceNumber   0  ?= " \n"
    specify "test for -1" $ whitespaceNumber (-1) ?= "\t\t\n"
    specify "test for 2"  $ whitespaceNumber   2  ?= " \t \n"
    specify "test for -3" $ whitespaceNumber (-3) ?= "\t\t\t\n"

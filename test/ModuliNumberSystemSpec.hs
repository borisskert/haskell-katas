module ModuliNumberSystemSpec (spec) where

import Codewars.Kata.ModSys (fromNb2Str)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fromNb2Str 779 [8, 7, 5, 3] `shouldBe` "-3--2--4--2-"
    fromNb2Str 15 [8, 6, 5, 3] `shouldBe` "Not applicable"
    fromNb2Str 19532819128 [17, 11, 5, 31, 3, 29, 37, 23, 13] `shouldBe` "-8--9--3--19--1--5--18--13--4-"
    fromNb2Str 8905496812 [19, 29, 11, 37, 23, 3, 31, 13] `shouldBe` "Not applicable"
    fromNb2Str 206068884913 [29, 37, 19, 51, 7, 33, 5, 13, 3, 2, 23] `shouldBe` "Not applicable"
    fromNb2Str 14497425 [31, 221, 5, 23, 3, 13, 377] `shouldBe` "Not applicable"
    fromNb2Str 4 [74, 111] `shouldBe` "Not applicable"

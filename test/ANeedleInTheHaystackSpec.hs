{-# Language TypeSynonymInstances,FlexibleInstances #-}

module ANeedleInTheHaystackSpec (spec) where

import Test.Hspec
import ANeedleInTheHaystack (findNeedle)

spec :: Spec
spec = do
  it "example tests" $ do
    findNeedle ["3", "123124234", "undefined", "needle", "world", "hay", 2, "3", "True", "False"] `shouldBe` "found the needle at position 3"
    findNeedle ["283497238987234", "a dog", "a cat", "some random junk", "a piece of hay", "needle", "something somebody lost a while ago"] `shouldBe` "found the needle at position 5"
    findNeedle [1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,"needle",1,2,3,4,5,5,6,5,4,32,3,45,54] `shouldBe` "found the needle at position 30"





instance Num String where -- never mind this bollocks. it just makes integer literals possibly be strings so I didn't have to type endless quotes.
  fromInteger = show
  (+) = undefined ; (*) = undefined ; abs = undefined ; signum = undefined ; negate = undefined

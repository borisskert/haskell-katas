module CodeWars.Kata.GreetMeSpec where

import CodeWars.Kata.GreetMe (greet)

import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "should work for \"riley\"" $ do
    greet "riley" =?= "Hello Riley!"

  where
    (=?=) = shouldBe
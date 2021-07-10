module Codewars.Kata.IsUpperCaseSpec where
import Codewars.Kata.IsUpperCase (isUpperCase)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isUpperCase" $ do
    returns False on "c"
    returns True  on "C"
    returns False on "hello I AM DONALD"
    returns True  on "HELLO I AM DONALD"
    returns False on "ACSKLDFJSgSKLDFJSKLDFJ"
    returns True  on "ACSKLDFJSGSKLDFJSKLDFJ"
    returns False on "Hello World"
    returns False on "hello world"
    returns False on "Hello world"
    returns False on "hello World"
    returns True  on "HELLO WORLD"
    returns False on "Bob walks his dog every day."
    returns False on "BOB walks his dog every day."
    returns True  on "BOB WALKS HIS DOG EVERY DAY."
    returns False on "BOB WALKs HIS DOG EVERY DAY."
    
    where
      returns r _ a = it ("returns " ++ show r ++ " on " ++ show a) $ isUpperCase a `shouldBe` r
      on            = undefined

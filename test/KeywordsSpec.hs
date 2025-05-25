module KeywordsSpec where

import qualified Data.Set as S
import Keywords (keywords)
import Test.Hspec (Spec, it, shouldBe, shouldContain)
import Test.Hspec.Core.Spec (Expectation)

spec :: Spec
spec = do
  it "Do you have the correct number of keywords in your list?" $ do
    length keywords `shouldBe` 23
  it "Missing a word that is used when making a family of methods that can be used with related data types" $ do
    keywords `shouldContainAll` ["module", "where"]
  it "Missing a conditional word used in pattern matching (first word of a pair)" $ do
    keywords `shouldContainAll` ["case"]
  it "Missing a word that is used when making a family of methods that can be used with related data types" $ do
    keywords `shouldContainAll` ["data", "type", "newtype", "instance", "class"]
  it "Missing a word that defines the requirements for an instance to use a fallback method" $ do
    keywords `shouldContainAll` ["default"]
  it "Missing a word that allows you to write monadic computations in a more imperative style" $ do
    keywords `shouldContainAll` ["do"]
  it "Missing a conditional word that goes at the end" $ do
    keywords `shouldContainAll` ["then", "else"]
  it "Missing a word that is used when interfacing with C code" $ do
    keywords `shouldContainAll` ["foreign"]
  it "Missing a conditional word that determines a possibility" $ do
    keywords `shouldContainAll` ["if"]
  it "Missing a word used to obtain external modules" $ do
    keywords `shouldContainAll` ["import"]
  it "Missing a word used when substituting a name for a value (second word of a pair)" $ do
    keywords `shouldContainAll` ["in"]
  it "Missing a word used for functions that can be used in-between it's arguments" $ do
    keywords `shouldContainAll` ["infix"]
  it "Missing a word used at the top level that lets other files know what the current one is called" $ do
    keywords `shouldContainAll` ["module"]
  it "Missing a word used for functions that can be used in-between it's arguments (and can chain together from left-to-right)" $ do
    keywords `shouldContainAll` ["infixl"]
  it "Missing a word used for functions that can be used in-between it's arguments (and can chain together from right-to-left)" $ do
    keywords `shouldContainAll` ["infixr"]
  it "Missing a word used as a placeholder for data that you don't care about" $ do
    keywords `shouldContainAll` ["_"]
  it "Missing a conditional word used in pattern matching (second word of a pair)" $ do
    keywords `shouldContainAll` ["of"]
  it "Missing a word that saves a lot of boilerplate when defining behavior of new data types" $ do
    keywords `shouldContainAll` ["deriving"]

shouldContainAll :: (Show a, Ord a) => [a] -> [a] -> Expectation
shouldContainAll actual expected =
  S.fromList expected `S.isSubsetOf` S.fromList actual `shouldBe` True

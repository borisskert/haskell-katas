module SignLanguageGaslightingSpec (spec) where

import SignLanguageGaslighting (gaslighting)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "gaslighting \"snack\" \"snake\" \"c\"" True $ gaslighting "snack" "snake" "c"
    assertEqual "gaslighting \"snack\" \"snack\" \"snack\"" False $ gaslighting "snack" "snack" "snack"
    assertEqual "gaslighting \"snake\" \"snack\" \"c\"" True $ gaslighting "snake" "snack" "c"
    assertEqual "gaslighting \"ping\" \"pong\" \"png\"" False $ gaslighting "ping" "pong" "png"
    assertEqual "gaslighting \"ping\" \"pong\" \"i\"" True $ gaslighting "ping" "pong" "i"

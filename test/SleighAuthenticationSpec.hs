module SleighAuthenticationSpec where
import SleighAuthentication (authenticate)
import Test.Hspec

spec :: Spec
spec = do
  describe "authenticate" $ do
    it "should work for some examples" $ do
      expectTrue  $ authenticate "Santa Claus" "Ho Ho Ho!"
      expectFalse $ authenticate "Santa"       "Ho Ho Ho!"
      expectFalse $ authenticate "Santa Claus" "Ho Ho!"
      expectFalse $ authenticate "jhoffner"    "CodeWars"
  where
    expectTrue  = flip shouldBe True
    expectFalse = flip shouldBe False

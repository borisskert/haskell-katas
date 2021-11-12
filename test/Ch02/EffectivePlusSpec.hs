{-# LANGUAGE TypeFamilies #-}
module Ch02.EffectivePlusSpec where

import Control.Concurrent (threadDelay)
import Control.Concurrent.Async (race)
import Data.Functor (($>))
import Test.Hspec
import Test.Hspec.Core.Spec
import Test.QuickCheck (property, Testable(..))

import Ch02.Nat
import Ch02.EffectivePlus (plusNat)

-- Fragile, but it works for me
-- DO NOT TOUCH
k = 10 * 1000 * 1000 :: Int
limitUs = 100 * 1000 :: Int

spec :: Spec
spec = do
  describe "Basic tests" $ do

    it "plusNat one two = three" $ do
      plusNat one two `shouldBe` three
      plusNat two one `shouldBe` three

    -- Poor man value forcing
    it "plusNat one some = Succ some" $ do
      plusNat one some `shouldBe` Succ some

  describe "Problem illustration" $ do

    itT "plusNat ∞ 1 >= some" $ do
      plusNat inf one `shouldSatisfy` atLeast some

    itT "plusNat 1 ∞ >= some" $ do
      plusNat one inf `shouldSatisfy` atLeast some

one   = Succ Zero
two   = Succ one
three = Succ two
some  = fromI k
inf   = Succ inf

fromI :: Int -> Nat
fromI 0 = Zero
fromI n = Succ $ fromI (n - 1)

atLeast Zero _ = True
atLeast (Succ x) (Succ y) = atLeast x y
atLeast _ Zero = False

--
-- Irrelevant hspec machinery
--

itT :: Example a => String -> a -> SpecWith (Arg a)
itT s = it s . Timed limitUs

data Timed a = Timed Int a

instance Example a => Example (Timed a) where
  type Arg (Timed a) = Arg a

  evaluateExample (Timed us e) x y z = either id id <$> race err action
    where
      action = evaluateExample e x y z
      err = threadDelay us $> Result "Too slow" (Failure Nothing (Reason "Too slow"))

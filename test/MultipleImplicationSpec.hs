module MultipleImplicationSpec (spec) where

import MultipleImplications (multImplication)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "multImplication []" Nothing $ multImplication []
    assertEqual "multImplication [False]" (Just False) $ multImplication [False]
    assertEqual "multImplication [True]" (Just True) $ multImplication [True]
    assertEqual "multImplication [False,False]" (Just True) $ multImplication [False,False]
    assertEqual "multImplication [False,True]" (Just True) $ multImplication [False,True]
    assertEqual "multImplication [True,False]" (Just False) $ multImplication [True,False]
    assertEqual "multImplication [True,True]" (Just True) $ multImplication [True,True]
    assertEqual "multImplication [False,False,False,False,False,True,True,False]" (Just False) $ multImplication [False,False,False,False,False,True,True,False]
    assertEqual "multImplication [False,False,True,True,True,True,True,False]" (Just False) $ multImplication [False,False,True,True,True,True,True,False]
    assertEqual "multImplication [True,False,True,False,False,True,False,False]" (Just True) $ multImplication [True,False,True,False,False,True,False,False]

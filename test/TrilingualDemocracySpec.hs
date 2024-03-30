module TrilingualDemocracySpec (spec) where

import Test.HUnit (assertEqual)
import Test.Hspec (Spec, it)
import TrilingualDemocracy (trilingualDemocracy)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "trilingualDemocracy \"FFF\":" 'F' $ trilingualDemocracy "FFF"
    assertEqual "trilingualDemocracy \"IIK\":" 'K' $ trilingualDemocracy "IIK"
    assertEqual "trilingualDemocracy \"DFK\":" 'I' $ trilingualDemocracy "DFK"
    assertEqual "trilingualDemocracy \"FKI\":" 'D' $ trilingualDemocracy "FKI"
    assertEqual "trilingualDemocracy \"KFI\":" 'D' $ trilingualDemocracy "KFI"

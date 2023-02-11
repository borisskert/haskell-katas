module IdealElectronDistributionSpec where

import IdealElectronDistribution (atomicNumber)
import Test.Hspec
import Test.QuickCheck

fixedTests =
  [ ( 1, [1])
  , (10, [2, 8])
  , (11, [2, 8, 1])
  , (22, [2, 8, 12])
  , (23, [2, 8, 13])
  , (47, [2, 8, 18, 19])
  , (50, [2, 8, 18, 22])
  , (52, [2, 8, 18, 24])
  , (60, [2, 8, 18, 32])
  , (61, [2, 8, 18, 32, 1])
  ]

testWith (n, expectedResult) =
  counterexample (show n) $
    atomicNumber n `shouldBe` expectedResult

spec =
  describe "atomicNumber" $ do
    it "should pass fixed tests" $
      conjoin $ testWith <$> fixedTests

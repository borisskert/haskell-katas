module MatrixfySpec (spec) where

import Matrixfy
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = matrixfy s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  it "Basic tests " $ do
    myTest "" (Left "name must be at least one letter")
    myTest "G" (Right [['G']])
    myTest "Beyonce" (Right [['B', 'e', 'y'], ['o', 'n', 'c'], ['e', '.', '.']])
    myTest "Pqdyll" (Right ["Pqd", "yll", "..."])

-- the following line is optional for 8.2
main = hspec spec

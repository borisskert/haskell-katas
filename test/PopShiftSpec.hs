module PopShiftSpec where

import Data.Maybe (Maybe (Nothing))
import PopShift
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = popShift s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest "reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps" ("spahrepswonkohwebyamdlroweht", "reusetestcasesbitcointakeove", Just 'r')
    myTest "turnsoutrandomtestcasesareeasierthanwritingoutbasicones" ("senocisabtuognitirwnahtreis", "turnsoutrandomtestcasesaree", Just 'a')
    myTest "exampletesthere" ("erehtse", "example", Just 't')
    myTest "letstalkaboutjavascriptthebestlanguage" ("egaugnaltsebehttpir", "letstalkaboutjavasc", Nothing)
    myTest "iwanttotraveltheworldwritingcodeoneday" ("yadenoedocgnitirwdl", "iwanttotravelthewor", Nothing)
    myTest "letsallgoonholidaysomewhereverycold" ("dlocyreverehwemos", "letsallgoonholida", Just 'y')
    myTest "a" ("a", "", Nothing)

-- the following line is optional for 8.2
main = hspec spec

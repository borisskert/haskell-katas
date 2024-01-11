module LogWithoutDatesSpec (spec) where

import LogWithoutDates (checkLogs)
import Test.HUnit (Assertion, assertEqual)
import Test.Hspec (Spec, it)

spec :: Spec
spec = do
  it "example tests" $ do
    test ["12:12:12"] 1
    test ["00:00:00", "00:01:11", "02:15:59", "23:59:58", "23:59:59"] 1
    test ["12:00:00", "23:59:59", "00:00:00"] 2
    test ["12:00:00", "12:00:00", "00:00:00"] 3

test :: [String] -> Int -> Assertion
test arg expected = assertEqual ("checkLogs " ++ show arg) expected (checkLogs arg)

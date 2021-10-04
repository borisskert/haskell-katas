module Move10Spec where

import Test.Hspec
import Move10

import Test.HUnit (assertEqual)

test s exp = do
  assertEqual msg exp actual
  where 
    actual = move10 s
    msg = "Failed at: " ++ showArgs
    showArgs = s
    
-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "Basic tests" $ do 
    test "a" "k"
    test "b" "l"
    test "abc" "klm"
    test "testcase" "docdmkco"
    test "codewars" "mynogkbc"
    test "exampletesthere" "ohkwzvodocdrobo"
    test "returnofthespacecamel" "bodebxypdroczkmomkwov"
    test "bringonthebootcamp" "lbsxqyxdrolyydmkwz"
    test "weneedanofficedog" "goxoonkxyppsmonyq"

-- the following line is optional for 8.2
main = hspec spec

module Codewars.Kata.Paperwork.TestSpec where

import Codewars.Kata.Paperwork (paperwork)
import Test.Hspec

spec :: Spec
spec = do
    describe "paperwork" $ do
      returns 25 on 5 and 5
  where
    returns r _ n _ m = it ("returns " ++ show r ++ " on " ++ show n ++ " and " ++ show m) $ (paperwork n m) `shouldBe` r
    and               = undefined
    on                = undefined

main = hspec spec

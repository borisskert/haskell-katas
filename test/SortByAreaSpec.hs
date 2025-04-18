module SortByAreaSpec (spec) where

import SortByArea (sortByArea)
import Preloaded (Shape(..))
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sortByArea [ Rectangle 4.23 6.43, Circle1 1.23, Circle1 3.444, Rectangle 1.342 3.212 ]
      `shouldBe` [ Rectangle 1.342 3.212, Circle1 1.23, Rectangle 4.23 6.43, Circle1 3.444 ]
    sortByArea [ Rectangle 2 5, Circle1 6 ] `shouldBe` [ Rectangle 2 5, Circle1 6 ]
    sortByArea [] `shouldBe` []

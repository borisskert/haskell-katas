module IfSpec where
import If (_if)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "_if" $ do
    it "should support True" $ do
      property $ \x y ->
        _if True x y == (x :: Int)
    it "should support False" $ do
      property $ \x y ->
        _if False x y == (y :: Int)
    it "should support False (other type)" $ do
      property $ \x y ->
        _if False x y == (y :: Char)

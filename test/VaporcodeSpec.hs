module VaporcodeSpec (spec) where

import Test.Hspec
import Vaporcode

spec :: Spec
spec = do
  it "basic tests" $ do
    vaporcode "Lets go to the movies" `shouldBe` "L  E  T  S  G  O  T  O  T  H  E  M  O  V  I  E  S"
    vaporcode "Why isn't my code working?" `shouldBe` "W  H  Y  I  S  N  '  T  M  Y  C  O  D  E  W  O  R  K  I  N  G  ?"

module SF49Spec where

import Test.Hspec
import SF49

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    decipher "98" `shouldBe` "b"
    decipher "122" `shouldBe` "z"
    decipher "10197115121" `shouldBe` "easy"

-- the following line is optional for 8.2
main = hspec spec

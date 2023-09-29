module WelcomeTranslationSpec where

import Test.Hspec
import WelcomeTranslation

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "welcome function" $ do
    it "accepts English" $
      welcome "english" `shouldBe` "Welcome"
    it "accepts Flemish" $
      welcome "flemish" `shouldBe` "Welgekomen"
    it "rejects Klingon" $
      welcome "klingon" `shouldBe` welcome "english"

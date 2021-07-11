module UFCSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import UFC

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "works for regular" $ do
        it "handles george" $ do
            fighter "george saint pierre" `shouldBe` "I am not impressed by your performance."
        it "handles conor" $ do
            fighter "conor mcgregor" `shouldBe` "I'd like to take this chance to apologize.. To absolutely NOBODY!"

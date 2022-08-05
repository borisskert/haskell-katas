module RemoveTheParenthesesSpec (spec) where

import RemoveTheParentheses (removeParentheses)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
--    removeParentheses "example(unwanted thing)example" `shouldBe` "exampleexample"
--    removeParentheses "example (unwanted thing) example" `shouldBe` "example  example"
--    removeParentheses "a (bc d)e" `shouldBe` "a e"
--    removeParentheses "a(b(c))" `shouldBe` "a"
--    removeParentheses "hello example (words(more words) here) something" `shouldBe` "hello example  something"
--    removeParentheses "(first group) (second group) (third group)" `shouldBe` "  "
    removeParentheses "GwKGqKmFfpSDDG OoAlWoUTEOJzjE  LDcoylOpsqN wfDuMWmWd mmA PKzQazTiHsH QMWIiJsx(v eKiwcZWAW ZsYAPcgWgZOuAUDxXWDBqQspeOnVDdCCatzx KSkyBzZkvraoniXAYyLWUasBgE bUCwhcJFfr nRgKYtYawbhJkqBJjMhKSpFNVAjhxOIpHxEbCe iDnDSfuvnViPo(h NtqA)TJjebTdg(VdfxIkU )FecX dbrotSICpU OzBaD QEEhgcb hcUeFc FuKU MrWqRhh(Q jTDs)mNBwlvhWbagjImcudLJvZaIjtwHCtTWfX(cNDePVBJAitHTWCpdjd)GotMdVrNc WXFNDjQallervruvjnYq OLkauiXK t PLTbjylSaAtH Yd RNADKqjU  hdOqGplpOo)StCiajCuja"
      `shouldBe` "GwKGqKmFfpSDDG OoAlWoUTEOJzjE  LDcoylOpsqN wfDuMWmWd mmA PKzQazTiHsH QMWIiJsxStCiajCuja"
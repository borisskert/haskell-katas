module PillowSpec where

import Test.Hspec
import Pillow

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    pillow ("EvH/KNikBiyxfeyK/miCMj", "I/HwjnHlFLlahMOKNadps") `shouldBe` False
    pillow ("\\DjQ\\[zv]SpG]Z/[Qm\\eLL", "amwZArsaGRmibriXBgTRZp") `shouldBe` False
    pillow ( "n", "B" ) `shouldBe` True
    pillow ("yF[CeAAiNihWEmKxJc/NRMVn", "rMeIa\\KAfbjuLiTnAQxNw[XB") `shouldBe` True
    pillow ("inECnBMAA/u", "ABAaIUOUx/M") `shouldBe` True
    pillow ("\225609L.s\SYNB\SOX[\a\US\463462V'\DC1I}hF\1056960X\637410\CANn", "n\CAN\637410X\1056960Fh}I\DC1'V\463462\US\a[X\SOB\SYNs.L\225609") `shouldBe` False

-- the following line is optional for 8.2
main = hspec spec

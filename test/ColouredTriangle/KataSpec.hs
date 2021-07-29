module ColouredTriangle.KataSpec where
import ColouredTriangle.Kata
import Test.Hspec

spec :: Spec
spec = do
    describe "Basic Tests" $ do
        it "Fixed Test" $ do
            (triangle "GB") `shouldBe` ("R")
            (triangle "RRR") `shouldBe` ("R")
            (triangle "RGBG") `shouldBe` ("B")
            (triangle "RBRG") `shouldBe` ("B")
            (triangle "RBRGB") `shouldBe` ("B")
            (triangle "RBRGBR") `shouldBe` ("R")
            (triangle "RBRGBRB") `shouldBe` ("G")
            (triangle "RBRGBRBGGRRRBGBBBGG") `shouldBe` ("G")
            (triangle "B") `shouldBe` ("B")
        it "Fixed Test nextRow" $ do
            (nextRow "GB") `shouldBe` ("R")
            (nextRow "RRR") `shouldBe` ("RR")
            (nextRow "RGBG") `shouldBe` ("BRR")
            (nextRow "RBRG") `shouldBe` ("GGB")
            (nextRow "RBRGB") `shouldBe` ("GGBR")
            (nextRow "RBRGBR") `shouldBe` ("GGBRG")
            (nextRow "RBRGBRB") `shouldBe` ("GGBRGG")
            (nextRow "GGBRGG") `shouldBe` ("GRGBG")
            (nextRow "GRGBG") `shouldBe` ("BBRR")
            (nextRow "BBRR") `shouldBe` ("BGR")
            (nextRow "BGR") `shouldBe` ("RB")
            (nextRow "RB") `shouldBe` ("G")

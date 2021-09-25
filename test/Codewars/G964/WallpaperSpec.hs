module Codewars.G964.WallpaperSpec where
import Codewars.G964.Wallpaper (wallpaper)  

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testWallpaper :: Double -> Double -> Double -> String -> Spec
testWallpaper l w h u = 
    it (printf "should return wallpaper for l : %f w : %f h : %f " l w h) $
        wallpaper l w h `shouldBe` u

spec :: Spec
spec = do
    describe "wallpaper" $ do
        -- testWallpaper 1.0 1.0 1.0 "two"
        -- testWallpaper 2.0 1.0 1.0 "two"
        -- testWallpaper 1.0 1.0 2.0 "two"
        -- testWallpaper 1.0 2.0 1.0 "two"
        testWallpaper 4.0 3.5 3.0 "ten"
        testWallpaper 0.0 3.5 3.0 "zero"
        testWallpaper 6.3 4.5 3.29 "sixteen"
        testWallpaper 7.8 2.9 3.29 "sixteen"
        testWallpaper 6.3 5.8 3.13 "seventeen"
        testWallpaper 6.1 6.7 2.81 "sixteen"

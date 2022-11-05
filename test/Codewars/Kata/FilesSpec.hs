module Codewars.Kata.FilesSpec where
import Codewars.Kata.Files (isAudio, isImage)
import Control.Monad (when)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isAudio" $ do  
    it "returns True on some valid file names" $ do
      mapM_ (isAudio `shouldBeTrueOn`)
        [ "NothingElseMatters.mp3"
        , "DaftPunk.flac"
        , "tobin.alac"
        ]
        
    it "returns false on invalid file names" $ do
      isAudio ""                         <?! "File name is empty"
      isAudio "Nothing Else Matters.mp3" <?! "File name contains spaces"
      isAudio "NothingElseMatters"       <?! "File has no extension"
      isAudio "NothingElseMattersmp3"    <?! "No dot between extension and file name"
      isAudio "NothingElseMatters.jpeg"  <?! "Not a music extension (jpeg)"
      isAudio "Shake-It-Off.alac"        <?! "Contains non-letters"
      isAudio "SymphonyNoNine.MP3"       <?! "Extension not lower case"
      isAudio ".mp3"                     <?! "No name part"
      
    it "returns True on random (valid) music names" $ 
      forAll (makeNames $ words "mp3 flac alac aac") isAudio
      
    it "returns False on random invalid music names" $ 
      forAll (makeNames $ words "AAC mp3.gif.aac jpeg OGG") (not . isAudio)
      
  ---------------------------------------------------------------
  describe "isImage" $ do  
    it "returns True on some valid file names" $ do
      mapM_ (isImage `shouldBeTrueOn`)
        [ "MonaLisa.jpeg"
        , "TheTomb.jpg"
        , "icon.gif"
        , "background.bmp"
        , "tiles.png"
        ]
        
    it "returns false on invalid file names" $ do
      isImage ""                         <?! "File name is empty"
      isImage "Nothing Else Matters.gif" <?! "File name contains spaces"
      isImage "NothingElseMatters"       <?! "File has no extension"
      isAudio "NothingElseMattersgif"    <?! "No dot between extension and file name"
      isImage "NothingElseMatters.alac"  <?! "Not a image extension (alac)"
      isImage "Shake-It-Off.jpeg"        <?! "Contains non-letters"
      isImage "SymphonyNoNine.PNG"       <?! "Extension not lower case"
      isImage ".bmp"                     <?! "No name part"      
    
    it "returns True on random (valid) image names" $ 
      forAll (makeNames $ words "jpg jpeg png bmp gif") isImage
    
    it "returns False on random invalid image names" $ 
      forAll (makeNames $ words "PNG bmP giff jpeg? png.gif") (not . isImage)      

  describe "some random examples" $ do
    it "..." $ do
      isImage "~\"1P(8!?UpK{UUm/rtJE~>0==9I(XsZ7UaxD_4#A6\\9B>:,sW=~dZbL/lPe.jpeg" `shouldBe` False
      isAudio "~\"1P(8!?UpK{UUm/rtJE~>0==9I(XsZ7UaxD_4#A6\\9B>:,sW=~dZbL/lPe.mp3" `shouldBe` False
  
  where
    True  <?! xs = expectationFailure xs
    False <?! _  = return ()
    
    shouldBeTrueOn f s = when (not $ f s) $ expectationFailure $ "failed on " ++ show s
    
    makeNames :: [String] -> Gen FilePath
    makeNames exts = do 
      name <- listOf1 $ oneof [choose ('a','z'), choose ('A','Z')]
      ext  <- elements exts
      return $ name ++ "." ++ ext

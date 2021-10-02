module Office1Spec where

import Test.Hspec
import Office1

spec :: Spec
spec = do
  it "Basic tests" $ do 
    outed [("tim",0), ("jim",2), ("randy",0), ("sandy",7), ("andy",0), ("katie",5), ("laura",1), ("saajid",2), ("alex",3), ("john",2), ("mr",0)] "laura" `shouldBe` "Get Out Now!"
    outed [("tim",1), ("jim",3), ("randy",9), ("sandy",6), ("andy",7), ("katie",6), ("laura",9), ("saajid",9), ("alex",9), ("john",9), ("mr",8)] "katie" `shouldBe` "Nice Work Champ!"
    outed [("tim",2), ("jim",4), ("randy",0), ("sandy",5), ("andy",8), ("katie",6), ("laura",2), ("saajid",2), ("alex",3), ("john",2), ("mr",8)] "john" `shouldBe` "Get Out Now!"
    outed [("",5)] "" `shouldBe` "Nice Work Champ!"
    outed [("\868379?",8), ("q",3), ("",0), ("GR\139681r4",3), ("\355117\587112\DC3JP\150457",6), ("X\n\DC2",2), ("\263621",8), ("\572462\SOR\ESC",6)] "\263621" `shouldBe` "Nice Work Champ!"
    outed [("\911303",3)] "\911303" `shouldBe` "Nice Work Champ!"
    outed [("F)r",2),(".\94837l-OaB\SYN",1),("\204127\EM4H#\EM",7),("e1\RSE\717198,\755246,'\ACK",2),("\a\505190\720391z\1098660(\418207\790649\DC4 pp",8),("\DC1p\1094922LFfw\\i\NUL.\762183x",8),("rXXqj{>&",1)] "e1\RSE\717198,\755246,'\ACK" `shouldBe` "Get Out Now!"
    outed [("y\r,\EM%f",2),("\RS\tq",0),("\SYN",8),("\SYN0",9),("q\962991\DC4\DLE`\ACK",6),("3_",1)] "y\r,\EM%f" `shouldBe` "Get Out Now!"
    outed [("\1103676]c{.\963949\436975jtid\743078#\1018875",8),("2@\54574r\FS@\155543cTF t\190080\SOH\459733\"\492003\398348",1),("k(IZ\753511\1038278\ACKm\507759\ENQv\GS<<\ESC\968061>\736645\ESC\EM\ESCU\178057G",9),("\US|Fg\401786 \544567",9),("\323382b\n\b",5),("\299644#\1110756\828199f]o\700186\ENQKX\b!|",3),("8.$\675319?\88542\760179\412085\910681\289984\796266",0),("",5)] "8.$\675319?\88542\760179\412085\910681\289984\796266" `shouldBe` "Get Out Now!"

-- the following line is optional for 8.2
main = hspec spec

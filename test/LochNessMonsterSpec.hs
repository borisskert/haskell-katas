module LochNessMonsterSpec (spec) where

import Test.Hspec
import LochNessMonster

spec :: Spec
spec = do
  it "basic tests" $ do
    isLochNessMonster "Your girlscout cookies are ready to ship. Your total comes to tree fiddy" `shouldBe` True
    isLochNessMonster "Howdy Pardner. Name's Pete Lexington. I reckon you're the kinda stiff who carries about tree fiddy?" `shouldBe` True
    isLochNessMonster "I'm from Scottland. I moved here to be with my family sir. Please, $3.50 would go a long way to help me find them" `shouldBe` True
    isLochNessMonster "Yo, I heard you were on the lookout for Nessie. Let me know if you need assistance." `shouldBe`  False
    isLochNessMonster "I will absolutely, positively, never give that darn Lock Ness Monster any of my three dollars and fifty cents" `shouldBe` False
    isLochNessMonster "Did I ever tell you about my run with that paleolithic beast? He tried all sorts of ways to get at my three dolla and fitty cent? I told him 'this is MY 4 dolla!'. He just wouldn't listen." `shouldBe` False
    isLochNessMonster "Hello, I come from the year 3150 to bring you good news!" `shouldBe` False
    isLochNessMonster "By 'tree fiddy' I mean 'three fifty'" `shouldBe`  True
    isLochNessMonster "I will be at the office by 3:50 or maybe a bit earlier, but definitely not before 3, to discuss with 50 clients" `shouldBe` False
    isLochNessMonster "" `shouldBe` False   

module TopWordsSpec (spec) where

import Control.Monad
import Test.Hspec
import TopWords (top3)

fixedTests :: [([Char], [[Char]])]
fixedTests =
  [ ("a a a  b  c c  d d d d  e e e e e", ["e", "d", "a"]),
    ( "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e",
      ["e", "ddd", "aa"]
    ),
    ("  //wont won't won't ", ["won't", "wont"]),
    ("  , e   .. ", ["e"]),
    ("  ...  ", []),
    ("  '  ", []),
    ("  '''  ", []),
    ( unlines
        [ "In a village of La Mancha, the name of which I have no desire to call to",
          "mind, there lived not long since one of those gentlemen that keep a lance",
          "in the lance-rack, an old buckler, a lean hack, and a greyhound for",
          "coursing. An olla of rather more beef than mutton, a salad on most",
          "nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra",
          "on Sundays, made away with three-quarters of his income."
        ],
      ["a", "of", "on"]
    ),
    ( "qFNaAr!__?_NGhfa;JZfjnDDsHc/:.-uSw?!:-nBie.XgcEJDga.__ -ZEMHO:JZfjnDDsHc?-/NGhfa,XvNYTRirBZ_ /YvPayZ:NGhfa! _./XgcEJDga:/:OdtsZQZEQz;/!-esnrDLbh_-., ",
      ["nghfa", "jzfjnddshc", "xgcejdga"]
    )
  ]

spec :: Spec
spec = describe "Sample tests" $ do
  forM_ fixedTests $ \(input, expected) -> do
    it ("top3 " <> show input) $ do
      top3 input `shouldBe` expected

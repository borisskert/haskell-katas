module SyntaxHighlighterSpec (spec) where

import Control.Monad (forM_)
import SyntaxHighlighter
import Test.Hspec

fixedTests :: [(String, String)]
fixedTests =
  [ ("", ""),
    ( "F3RF5LF7",
      "<span style=\"color: pink\">F</span><span style=\"color: orange\">3</span><span style=\"color: green\">R</span><span style=\"color: pink\">F</span><span style=\"color: orange\">5</span><span style=\"color: red\">L</span><span style=\"color: pink\">F</span><span style=\"color: orange\">7</span>"
    ),
    ( "FFFR345F2LL",
      "<span style=\"color: pink\">FFF</span><span style=\"color: green\">R</span><span style=\"color: orange\">345</span><span style=\"color: pink\">F</span><span style=\"color: orange\">2</span><span style=\"color: red\">LL</span>"
    )
  ]

spec :: Spec
spec = do
  forM_ fixedTests $ \(input, expected) -> do
    it (show input) $ do
      let response = highlight input
      putStrLn $ "Expected: " ++ expected
      putStrLn $ "     Got: " ++ response
      response `shouldBe` expected

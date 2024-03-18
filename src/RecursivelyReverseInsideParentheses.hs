module RecursivelyReverseInsideParentheses
  ( reverseInParens,
    parse,
  )
where

import qualified Text.Megaparsec as M (Parsec, between, noneOf, parse, some, (<|>))
import qualified Text.Megaparsec.Char as M (char)

-- https://www.codewars.com/kata/5e07b5c55654a900230f0229/train/haskell

reverseInParens :: String -> String
reverseInParens = show . reverseInParentheses . parse

data Literal = Text String | Parentheses [Literal] | Literals [Literal]

instance Show Literal where
  show (Text x) = x
  show (Parentheses x) = "(" ++ concatMap show x ++ ")"
  show (Literals x) = concatMap show x

instance Eq Literal where
  (Text x) == (Text y) = x == y
  (Parentheses x) == (Parentheses y) = x == y
  (Literals x) == (Literals y) = x == y
  _ == _ = False

reverseInParentheses :: Literal -> Literal
reverseInParentheses (Parentheses x) =
  Parentheses
    . reverseMany
    . map reverseInParentheses
    $ x
  where
    reverseMany :: [Literal] -> [Literal]
    reverseMany = map reverseOne . reverse
    reverseOne :: Literal -> Literal
    reverseOne (Text x) = Text (reverse x)
    reverseOne (Parentheses x) = Parentheses . reverseMany $ x
    reverseOne (Literals x) = Literals . reverseMany $ x
reverseInParentheses (Literals x) = Literals . map reverseInParentheses $ x
reverseInParentheses x = x

type Parser = M.Parsec String String

parse :: String -> Literal
parse xs = case M.parse manyLiterals "" xs of
  Left xs -> error (show xs)
  Right x -> Literals x
  where
    manyLiterals :: Parser [Literal]
    manyLiterals = someLiterals M.<|> return []

    someLiterals :: Parser [Literal]
    someLiterals = do
      x <- oneLiteral
      xs <- manyLiterals
      return (x : xs)

    oneLiteral :: Parser Literal
    oneLiteral = parentheses M.<|> text

    parentheses :: Parser Literal
    parentheses = Parentheses <$> M.between (M.char '(') (M.char ')') manyLiterals

    text :: Parser Literal
    text = Text <$> M.some (M.noneOf "()")

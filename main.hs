{-# OPTIONS -Wall -fno-warn-unused-do-bind #-}
import Compiler.Lexer
import Text.Parsec
main :: IO ()
main = putStrLn ""

type Txt = String

lexed :: Txt -> Either ParseError Txt
lexed str = do
 x <- parse lexer' "" str
 return $ show x

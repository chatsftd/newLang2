{-# LANGUAGE FlexibleContexts #-}
{-# OPTIONS -Wall -fno-warn-unused-do-bind #-}
module Compiler.Lexer
(lexer'
)where
import Text.Parsec
import Control.Applicative hiding(many,(<|>))
type Sent = ()
lexer' :: Stream s m Char => ParsecT s u m [Sent]
lexer' = lexer <* eof

lexer :: Stream s m Char => ParsecT s u m [Sent]
lexer = many sent

sent :: Stream s m Char => ParsecT s u m Sent
sent = undefined

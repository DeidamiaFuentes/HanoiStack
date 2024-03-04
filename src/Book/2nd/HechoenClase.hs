{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

module Book2_2 (isOperand, priority, digits, operands, first, tupleFromExpression) where

import Data.Char (isDigit)

isOperand :: Char -> Bool
isOperand c
  | c == '+' = True
  | c == '*' = True
  | c == '^' = True
  | c == '-' = True
  | otherwise = False

priority :: Char -> Int
priority c
  | c == '*' = 7
  | c == '+' = 6
  | c == '-' = 6
  | c == '^' = 8
  | otherwise = 0

digits :: String -> [String]
digits [] = []
digits (x : xs)
  | isDigit x = (x : takeWhile isDigit xs) : digits (dropWhile isDigit xs)
  | otherwise = digits xs

operands :: String -> String
operands [] = []
operands (x : xs)
  | isOperand x = x : operands xs
  | otherwise = operands xs

first :: [String] -> String -> String
first [] _ = []
first _ [] = []
first x (a : ab)
  | priority a > priority (head ab) = "(" ++ head x ++ [a]
  | priority (head ab) > priority a = head x ++ [a]
  | otherwise = a : head x

tupleFromExpression :: String -> (String, Char, (String, Char, String))
tupleFromExpression [] = ()
tupleFromExpression xs | isDigit xs = (xs, ' ', ())
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

module Book2_2 (isOperand, priority, digits, operands) where

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

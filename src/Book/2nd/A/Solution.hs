-- Deidamia Fuentes

module Sution (myAverage, students) where

import Data.Char (isDigit)

myAverage :: String -> Int
myAverage [] = 0
myAverage [x] = read [x] :: Int
myAverage (x : xs)
  | isDigit x = (read (takeWhile isDigit (x : xs)) :: Int) + myAverage (dropWhile isDigit xs)
  | otherwise = myAverage xs

students :: String -> String
students [] = []
students (x : xs)
  | isDigit x = students (dropWhile isDigit xs)
  | otherwise = x : takeWhile (\x -> not (isDigit x)) xs ++ students (dropWhile (\x -> not (isDigit x)) xs)

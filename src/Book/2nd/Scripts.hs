module Scripts (double, quadruple, factorial, average, a, d, a2, d2, factorial2, average2) where

double :: (Num a) => a -> a
double x = x + x

quadruple :: (Num a) => a -> a
quadruple x = double (double x)

factorial :: Int -> Int
factorial n = product [1 .. n]

average :: [Int] -> Int
average ns = sum ns `div` length ns

a :: Integer
a = b + c
  where
    b = 1
    c = 2

d :: Integer
d = a * 2

a2 :: Integer
d2 :: Integer
a2 = b + c where b = 1; c = 2

d2 = a * 2

-- Factorial of a positive integer:

factorial2 :: Int -> Int
factorial2 n = product [1 .. n]

-- Average of a list of integers:

average2 :: [Int] -> Int
average2 ns = sum ns `div` length ns
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use null" #-}
module Execices2 (n, lastElement, initElement) where

  {--
  2. Parenthesise the following numeric expressions:
  2^3*4   --- >  (2^3) * 4
  2*3+4*5 --- >  (2*3) + (4*5)
  2+3*4^5 --- >  2 + (3* (4^5)
  --}


  {--
  The script below contains three syntactic errors. Correct these errors and then check that your
  script works properly using GHCi.
    N = a ’div’ length xs
      where
        a = 10
       xs = [1,2,3,4,5]
  --}

  n :: Int
  n = a `div` length xs
    where
      a = 10
      xs = [1, 2, 3, 4, 5]


  -- 4.

  lastElement :: [Int] -> Int
  lastElement [] = 0
  lastElement [x] = x
  lastElement (_:xs) = lastElement xs


  -- 5.

  initElement :: [Int] -> [Int]
  initElement [] = []
  initElement (x:xs)  | length xs == 0 = []
                      | otherwise = x : initElement xs

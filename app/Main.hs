module Main (main) where

import Hanoi

main :: IO ()
main = do
    let result = hanoiResolve(3, 'A', 'B', 'C')
    print result

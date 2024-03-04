module Students (tupla, sumAges, average, names, underAge, betweenAge, convertToInt) where
import Data.Char (isDigit)

convertToInt :: String -> Int
convertToInt str = read str :: Int

tupla :: String -> Char -> [(String, Int)]
tupla [] _ = []
tupla (x:xs) c  | x == c = tupla (tail xs) c
                | otherwise = (x : init (takeWhile (\x -> not (isDigit x)) xs), convertToInt (takeWhile isDigit (dropWhile (\x -> not (isDigit x)) xs))) : tupla (dropWhile (/=c) xs) c


sumAges :: [(String, Int)] -> Int
sumAges [] = 0
sumAges [x] = snd x
sumAges (x:xs) = snd x + sumAges xs

average :: [(String, Int)] -> Int
average [] = 0
average x = div (sumAges x) (length x)

names :: [(String, Int)] -> [String]
names [] = []
names [x] = [fst x]
names (x:xs) = fst x : names xs

underAge :: [(String, Int)] -> Int -> [String]
underAge [] _ = []
underAge _ 0 = []
underAge [x] c  | snd x < c = [fst x]
                | otherwise = []
underAge (x:xs) c = underAge [x] c ++ underAge xs c

betweenAge :: [(String, Int)] -> Int -> Int -> [(String, Int)]
betweenAge [] _ _ = []
betweenAge _ 0 _= []
betweenAge _ _ 0 = []
betweenAge [a] x y  | snd a >= x && snd a <= y = [a]
                    | otherwise = []
betweenAge (a:as) x y = betweenAge [a] x y ++ betweenAge as x y






--Tarea
module Split (mySplit) where

  mySplit :: String -> Char -> [String]
  mySplit [] _ = []
  mySplit (x:xs) c  | x == c = mySplit xs c
                    | otherwise = (x : takeWhile (/=c) xs) : mySplit (dropWhile (/=c) xs) c


--Hecho en Clases:

-- Da un bucle infinito feo :'c

{--
aSplit :: String -> Char -> [String]
aSplit [] _ = []
aSplit x c = takeWhile (c>) x : aSplit (dropWhile (c>) x) c
--}


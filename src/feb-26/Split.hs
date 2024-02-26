-- Da un bucle infinito feo :'c
aSplit :: String -> Char -> [String]
aSplit [] _ = []
aSplit x c = takeWhile (c>) x : aSplit (dropWhile (c>) x) c
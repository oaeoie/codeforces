--- 6 6 4 -> 2 * 2 = 4
upperDiv :: Integral a => a -> a -> a
upperDiv a b = (a - 1) `div` b

pav :: Integral a => a -> a -> a -> a
pav a b c = (a `upperDiv` c + 1) * (b `upperDiv` c + 1)

listToFunc :: (t1 -> t1 -> t1 -> t1) -> [t1] -> t1
listToFunc func [a,b,c] = func a b c


rInt :: String -> Int
rInt = read

theatre :: String -> String
theatre c = show $ listToFunc pav $ map rInt $ words c

main = interact theatre
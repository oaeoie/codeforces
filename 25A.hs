rInt :: String -> Int
rInt = read

flat :: [a] -> a
flat [x] = x

checker :: [Bool] -> Int
checker (True:False:False:_) = 1
checker (False:True:True:_) = 1
checker [False,True,False] = 2
checker [True,False,True] = 2
checker [False,False,True] = 3
checker [True,True,False] = 3
checker (x:xs) = 1 + checker xs



reader :: String -> [Bool]
reader s = map (even.rInt) $ words $ flat $ tail $ lines s 

solver :: String -> String
solver s = show $ checker $ reader s


main = do interact solver
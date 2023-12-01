
shorter :: String -> String
shorter x = if length x > 10 then [head x] ++ show (length x - 2) ++ [last x] else x

main = do
    interact $ unlines.map shorter.tail.lines
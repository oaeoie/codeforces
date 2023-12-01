

toBit :: [String] -> Int
toBit = foldl (\acc x -> if '+' `elem` x then acc + 1 else acc - 1) 0 

main = interact $ show.toBit.tail.lines 
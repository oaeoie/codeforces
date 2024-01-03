{-
An elephant decided to visit his friend. 
It turned out that the elephant's house is located at point 0 and his friend's house is located at point x(x > 0) of the coordinate line. 
In one step the elephant can move 1, 2, 3, 4 or 5 positions forward. 
Determine, what is the minimum number of steps he need to make in order to get to his friend's house.

Input
The first line of the input contains an integer x (1 ≤ x ≤ 1 000 000) — The coordinate of the friend's house.

Output
Print the minimum number of steps that elephant needs to make to get from point 0 to point x.

EX) 
    input 5
    output 1

    input 12
    output 3

-}

rInt :: String -> Int
rInt = read

solver :: String -> String
solver s = show $ (rInt s + 4) `div` 5



main = do
    interact solver

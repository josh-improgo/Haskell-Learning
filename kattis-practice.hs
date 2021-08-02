{-|
Take Two Stones
N stones, labeled 1 - N
if input is odd, it is Alice
    if even, Bob

-}

-- cast string to integer

-- readInput = (map read) . words
-- main = interact (writeOutput . solve . readInput)
-- solve [] = []
-- solve (x:rest) = if x `mod` 2 == 0 then "Bob" else "Alice"
-- writeOutput = unlines . (map show)
-- main = interact (show . solve . read)
-- interact (writeOutput . solve . readInput)
-- solve [] = []



-- solve [] = []
-- solve (a:rest) = 

-- readInput = (map read) . words
-- writeOutput = unlines . (map show)
-- main = interact (writeOutput . solve . readInput)
-- main = putStrLn "Hello, World!"


main = do
    input <- getLine
    (putStrLn . solve . read) input

solve::Integer -> String
solve input = if even input then "Bob" else "Alice"

-- main = do
--   line <- getLine
--   let n = read line :: Int
--   let names = ["Bob", "Alice"]
--   putStrLn $ names !! mod n 2

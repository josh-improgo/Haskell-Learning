units, teens, tens :: [String]
units = ["zero","one","two","three","four","five", "six","seven","eight","nine"]
teens = ["ten","eleven","twelve","thirteen","fourteen", "fifteen","sixteen","seventeen","eighteen", "nineteen"]
tens = ["twenty","thirty","forty","fifty","sixty", "seventy","eighty","ninety"]

convert1 :: Int -> String
convert1 n = units!!n
-- uses list-idnexing op (!!)

digits2 :: Int -> (Int, Int) -- taking an Int, returning a pair of ints
digits2 n = (div n 10, mod n 10) -- div n 
-- div 5 10 : 5 / 10 = 0
-- mod 5 10 : 5 % 10 = 5

convert2 :: Int -> String
convert2 = combine2 . digits2

combine2 :: (Int, Int) -> String
combine2 (t, u)
    -- 67
    -- t = 6, u = 7
    -- 8
    -- if t == 0, then return units!!u
    | t == 0        = units!!u -- units!!7 = "seven"
    | t == 1        = teens!!u -- teens!!7 = "seventeen"
    | 2 <= t && u == 0 = tens!!(t-2) -- tens!!6 = 60
    | 2 <= t && u /= 0 = tens!!(t-2) ++ "-" ++ units!!u -- sixty-seven

convert3 :: Int -> String
convert3 n
    | h == 0            = convert2 t
    | n == 0            = units!!h ++ " hundred"
    | otherwise         = units!!h ++ " hundred and " ++ convert2 t
    where (h, t) = (n `div` 100, n `mod` 100)
-- 324, 324 / 100 = 3       324 % 100 = 24
-- convert2 24
-- 3, units!!h + hundred
-- convert3 0
-- 0 / 100 = 0
-- convert2 t, 0 zero
-- firstDigit
-- lastTwoDigits
-- units!!0 ++ hundred => zero hundred

convert6 :: Int -> String
convert6 n
    | m == 0            = convert3 h
    | h == 0            = convert3 m ++ " thousand"
    | otherwise = convert3 m ++ " thousand" ++ link h ++ convert3 h
    where (m, h) = (n `div` 1000, n `mod` 1000)

link :: Int -> String
-- link h = if h < 100 then " and " else " "
link h | h < 100 = " and "
    | otherwise = " "

convert :: Int -> String
convert = convert6


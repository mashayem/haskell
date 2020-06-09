module Lab2_1 where
-- #4

-- standard function reverse
reverseListA :: [Int] -> [Int]
reverseListA list = reverse list

-- handmade recursion
reverseListB :: [Int] -> [Int]
reverseListB [] = []
reverseListB (x:xs) = reverseListB xs ++ [x]

-- pass high order function to fold
prepend :: [Int] -> Int -> [Int]
prepend xs x = x:xs

reverseListC :: [Int] -> [Int]
reverseListC list = foldl (prepend) [] list

--



lRotate :: [Int] -> Int -> [Int]
lRotate [] _ = []
lRotate (x:xs) n
                | n==0  = x:xs
                | n > 0 = lRotate (xs ++ [x]) (n-1)

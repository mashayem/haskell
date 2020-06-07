module Lab1_2 where

bothTrue  :: Bool -> Bool -> Bool

-- test cases:
-- bothTrue (3 == 3) (5 == 5)
-- bothTrue (3 == 3) (5 == 6)
-- etc.
bothTrue expr1 expr2
                  | expr1 = expr2
                  | otherwise = False

--import Prelude hiding (min)



--minim :: [Int] -> Int
--minim []       = 0
--minim [x]      = x
--minim (x:xs)   = min x (minim xs)
--
--min :: Int -> Int -> Int
--min a b
--    | a > b  = b
--    | a < b  = a
--    | a == b = a

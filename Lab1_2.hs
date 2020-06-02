module Lab1_2 where

import Prelude hiding (min)

minim :: [Int] -> Int
minim []       = 0
minim [x]      = x
minim (x:xs)   = min x (minim xs)

min :: Int -> Int -> Int
min a b
    | a > b  = b
    | a < b  = a
    | a == b = a

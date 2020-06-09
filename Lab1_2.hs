module Lab1_2 where

bothTrue  :: Bool -> Bool -> Bool

-- test cases:
-- bothTrue (3 == 3) (5 == 5)
-- bothTrue (3 == 3) (5 == 6)
-- etc.
bothTrue expr1 expr2
                  | expr1 = expr2
                  | otherwise = False



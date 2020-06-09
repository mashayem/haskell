module Lab2_3 where

-- 24.Знайти найменше спільне кратне двох чисел.

lcmCustom :: Int -> Int -> Int
lcmCustom _ 0 =  0
lcmCustom 0 _ =  0
lcmCustom x y =  abs ((x `quot` (gcd x y)) * y)
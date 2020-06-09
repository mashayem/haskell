module Lab2_2 where

--14.Замінити кожен n-й елемент списку вказаним значенням, напр. при n=2 та
--значенні 'z': "1234590"=>"1z3z5z0".

changeList :: [Int] -> Int -> Int -> [Int]
changeList n z replacement = changeListIndexed n z replacement 0

changeListIndexed :: [Int] -> Int -> Int -> 0 -> [Int]
changeListIndexed (head:tail) n z index
  | mod index n == 0 = [z] ++ changeListIndexed tail n z index+1
  | otherwise = [head] ++ changeListIndexed tail n z index+1
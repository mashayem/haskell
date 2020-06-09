module Lab2_2 where

--14.Замінити кожен n-й елемент списку вказаним значенням.
-- напр. при n=2 та значенні 'z': "1234590"=>"1z3z5z0".

changeList :: [Int] -> Int -> Int -> [Int]
changeList list n z = do
  let zipped = zip list [1..]
  map (\(el, pos) -> if mod pos n == 0 then z else el) zipped

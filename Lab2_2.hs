module Lab2_2 where

import Data.List

insert :: Int -> a -> [a] -> [a]
insert n y xs = countdown n xs where
   countdown 0 xs = y:countdown n xs
   countdown _ [] = []
   countdown m (x:xs) = x:countdown (m-1) xs

insertAtN n y xs = intercalate [y] . groups n $ xs
  where
    groups n xs = takeWhile (not.null) . unfoldr (Just . splitAt n) $ xs

insertZip n y xs = zip xs (cycle [1..n]) >>= f where
  f (x,k) = if k == n then [x,y] else [x]

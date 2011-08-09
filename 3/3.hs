
euler3 = f [2..] 600851475143
  where f (x:xs) n
          | n `mod` x == 0 = if (n <= x) then x else f xs (n `div` x)
          | otherwise = f xs n
        
        
main = print $ euler3

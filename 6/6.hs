import Data.List ((\\))

lst = [1..100]

euler6 xs = foldl (\x y -> x + f xs y) 0 xs
  where f xs x = let ys = xs\\[x] in sum $ map (*x) ys

main = print $ euler6 lst

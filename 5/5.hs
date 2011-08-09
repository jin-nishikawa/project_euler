import Data.List (transpose, foldl1)

ps = map (flip (,) 0) [2,3,5,7,11,13,17,19]

f [] _ = []
f ((x,y):xs) n 
  | n `mod` x == 0 = f ((x,y+1):xs) (n `div` x) 
  | otherwise = (x,y):f xs n

g (x1,y1) (x2,y2)
  | y1 < y2 = (x1,y2)
  | otherwise = (x1,y1)

euler5 = foldl1 (*) . map (uncurry (^) . (foldl1 g)) . transpose . map (f ps)

main = print $ euler5 [1..20]

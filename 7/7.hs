primes = 2:f [3] [3,5..]
  where f (x:xs) ys = let (ps,qs) = span (< x^2) ys in ps ++ f (xs ++ ps) [z|z <- qs, mod z x /= 0]

euler7 x = primes !! idx
  where idx = x - 1

main = print $ euler7 10001

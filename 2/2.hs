
fib = 1:2:(zipWith (+) fib (tail fib))

f i s | n < 4000000 = f (i + 3) (s + n)
      | otherwise   = s
  where !n = fib !! i

euler2 = f 1 0

main = print euler2

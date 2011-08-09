import Control.Monad (guard)

main = print euler4

euler4 = head $ do
      n <- [999999,999998..100000]
      guard $ show n == reverse (show n)      
      x <- [999,998..100]
      guard $ (n `mod` x) == 0 && length (show (n `div` x)) == 3
      return n

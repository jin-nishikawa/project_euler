import Control.Monad (guard)

euler9 = head $ do
      a <- [1..]
      b <- [a+1..1000-a]
      let c = 1000-a-b
      guard $ a^2+b^2 == c^2
      return (a*b*c)

main = print euler9

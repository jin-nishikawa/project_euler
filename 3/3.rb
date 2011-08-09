# http://projecteuler.net/index.php?section=problems&id=3
#  find the largest prime factor of 600 851 475 143

a = 600_851_475_143
f = 2 # smallest possible prime factor

# Divide "evil big number" by lowest prime factors to get the
#  biggest one. Prime factors are the numbers, which do not
#  leave a rest. If a possible number is not a prime factor 
#  candidate anymore, check the next one.
a%f==0 ? a/=f : f+=1  while a>1

puts f

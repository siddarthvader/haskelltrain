is_prime :: Int -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime n | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False 
           | otherwise = True

printPrime:: Int -> [Int]
printPrime xs = [x| x<-[1..xs], is_prime x]
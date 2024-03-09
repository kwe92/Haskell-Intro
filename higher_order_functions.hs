-- Higher Order Functions

powOf :: (Integral a) => a -> (a -> a)
powOf e n = n ^ e

powOfTwo = powOf 2

powOfFive = powOf 5

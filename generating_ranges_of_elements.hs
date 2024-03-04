-- Ranges

--   - arithmetic sequences of elements that can be enumerated
--   - integers and characters from A-Z can be enumerated as characters map to the subset of whole numbers {0, 1, 2, ..., 23}

-- Range Operator

--   - [min..max] | max is inclusive
--   - e.g. [1..6] results in the List [1, 2, 3, 4 ,5 ,6]
--   - e.g. ['a'..'d'] results in the List ['a', 'b', 'c', 'd']

-- generic range function
generateListInRange :: (Enum a) => a -> a -> [a]
generateListInRange min max = [min .. max]

smallListofIntegers = 0 `generateListInRange` 20

largeListofIntegers = 0 `generateListInRange` 200

aThroughd = 'a' `generateListInRange` 'd'

-- Range With Step

--   - the range function can take at most one step
--   - [min,step..max]
--   - e,g, [2,4..10] results in the List [2, 4, 6, 8, 10]

min :: Int = 0

max :: Int = 30

step00 :: Int = Main.min + 2

incrementedListWithStep = [Main.min, step00 .. Main.max]

-- Ranges Can Decrement

--   - ranges that decrement requires a step
--   - [max,step..min]
--   - e.g. [20,18..2] results in the List [20,18,16,14,12,10,8,6,4,2]

lowerLimit :: Int = 2

upperLimit :: Int = 20

step01 :: Int = upperLimit - 2

decrementedList = [upperLimit, step01 .. lowerLimit]

-- Ranging Over Floating Point Numbers

--   - it's best not to at all

-- Lazy Evaluation of Infinite Lists

--   - you can construct inifinite Lists by ommiting the upper limit (max)
--     you can then specify the amount of elements you would like by using the built in function `take`
--     which takes an integer and a List as an argument and returns the first in elements

getnElementsFromInfiniteList :: (Num a, Enum a) => Int -> [a]
getnElementsFromInfiniteList n = take n [1, 2 ..]

arr0 = getnElementsFromInfiniteList 5

-- Other Ways of Creating Infinite Lists

-- take and cycle

arr1 = take 12 (cycle [2, 4 .. 8]) -- results in the List [2,4,6,8,2,4,6,8,2,4,6,8]

-- tame and repeat

arr3 = take 12 (repeat 5) -- results in the List [5,5,5,5,5,5,5,5,5,5,5,5]

-- Replicating a List

arr4 = replicate 12 5 -- results in the List [5,5,5,5,5,5,5,5,5,5,5,5]

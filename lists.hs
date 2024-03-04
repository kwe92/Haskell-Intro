-- Lists in Haskell

--   - homogeneous collections of indexible elements that can have duplicate values
--   - elements can only be of one type
--   - indices map to the set of whole numbers {0, 1, 2, ..., n}
--   - Strings are Lists of individual characters ['h', 'e', 'l', 'l','0']
--   - implying that you can use List operations on Strings
--   - Lists are initialized using square brackets

-- Declaration and initialization of a List
arr0 = [1, 2, 3, 4, 5]

arr1 = [6, 7, 8, 9]

-- List Concatenation Operator ++

--   - O(n) asymptotic complexity | linear time complexity
--   - slow operation on large Lists and Strings
--   - combines two Lists together
--   - requires that single elements be singleton Lists e.g. 5 ++ arr1 will throw an error
--     you must write [5] ++ arr1

arr2 = arr0 ++ arr1

-- Prepend Operator : | Cons Operator

--   - O(1) asymptotic complexity | constant time complexity
--   - analogous to SML prepend operator :: but only uses one colon :
--   - adds an element to the beginning of a List in constant time
--   - you can ommit square brackets for single elements

arr3 = 0 : arr2

-- Subscript Operator !!

--   - allows you to access elements of a collection by index in constant time
--   - in Haskell the supscript operator is !!
--   - dyadic function whose first argument is a List and second an available index in the List

fithElement = arr2 !! 4

-- Nested Lists

--   - Nested Lists must all be of the same type or a compile time error is thrown

-- ? arr4 = [[1, 2, 3], ["not the sane type"], [True, False]]

arr4 = [[1, 3, 5, 7], [9, 11, 13, 15], [17, 19, 21, 23]]

-- Basic List Functions:

--   - head: returns the first element of a List
--   - tail: returns a List with its first element popped off
--   - last: returns the last element of a List
--   - init: returns a List with its last element popped off
--   - length: returns the length of a List
--   - null: predicate function that checks if a List is empty | equivalent to isEmpty method in Dart
--   - reverse: reverses a Lists elements
--   - take: extracts n elements from the beginning of a List | if n exceeds the length of the List the entire List is returned | if n is 0 an empty List is returned
--   - drop: drops n elements from the beginning of a List
--   - minimum: smallest element
--   - maximum: largest element
--   - sum: sum of all elements
--   - product: produnct of all elements
--   - elem: synonymous with contains method in dart
--   - NOTE: calling List functions that return elements on an empty List will result in a runtime error

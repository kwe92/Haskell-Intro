
main = do
    putStrLn "Please enter a sentence you would like to be encoded, or press enter to exit the program."
    line <- getLine
    if null line
        then return ()
    else do
        putStrLn  $ reverseWord line
        main

    where reverseWord line = unwords $ map reverse $ words line



-- Reverse Sentence Encoding Example

--   - encode the user input by reversing the words in a sentence

--   - words function: takes a string and creates a list of words delimited by white space

--   - reverse function: takes a list as an argument and reverses the elements

--   - map function:: maps f to every element within xs, f must be a unary function

--   - unwords function: takes a list of string and concatenates them into one string starting at element 0


-- return statement in I/O actions

--   - wraps an IO action around a concrete value

--   - e.g. return "hello" has a type of IO String
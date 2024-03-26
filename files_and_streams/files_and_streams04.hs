import System.IO

main :: IO ()
main = do
    withFile "haiku01.txt" ReadMode (
        \handle -> do
        contents <- hGetContents handle
        putStrLn contents
                                    )

-- withFile

--    - combines the process of:

--        - opening a file and assigning it to a variable

--        - doing some IO action with that file

--        - closing the file

--   - takes two arguments:

--       - the path to the file

--       - a callback that takes the handle as an argument and returns an IO action


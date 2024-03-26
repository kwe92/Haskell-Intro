import System.IO

-- TODO: Edit Comments

-- Opening Files in Haskell

--   - use the openFile function from System.IO

--   - syntax for opening a file:

--       - openFile "file_you_want_to_open.txt" IOMode

-- I/O Laziness

--   - files are typically processed line by line instead of fully being read into memory as a buffer

--   - buffering can be customized

-- IOMode

--   - determines the mode in which the file is opened i.e. read, write, etc

-- Closing Files

--   - files should be closed once opened

-- hGetContents

--   - read the entire contents of a file handle into a String

main = do
  file <- openFile "haiku01.txt" ReadMode -- open file
  contents <- hGetContents file -- read contents from handle object
  putStrLn contents
  hClose file -- close file

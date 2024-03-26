import System.IO

-- Writing to Files

-- writeFile | writeFile :: FilePath -> String -> IO ()

--   - truncates the contents of a file and then writes to the file

--   - if the file does not exist it will be created

--   - files can be viewed as streams of bytes

main = do
  writeFile "random_quote.txt" "if evils have no means of entering us except through the judgements we make of them it would then seem to be in our best instrest to dismiss them or turn them to good."
  file <- openFile "random_quote.txt" ReadMode
  contents <- hGetContents file
  putStrLn contents
  hClose file

import System.IO

-- Buffering

--   - temporary storage to hold data bwtween two or more processes

--   - the storage mechanism is typically the RAM of a computer

--   - you can set the buffer for binary file

--   - reading files in bigger chuncks can help minimize the number of read performed on a disk

--   - setting bigger chunck sizes also helps when a network is slow
 
-- Setting Buffering in Haskell

--   - hSetBuffering <file> (BlockBuffering(Just <number_of_bytes_to_chunck>))
main = do
    withFile "haiku01.txt" ReadMode (\ file -> do
                                    hSetBuffering file (BlockBuffering(Just 10))
                                    contents <- hGetContents file
                                    putStrLn contents)
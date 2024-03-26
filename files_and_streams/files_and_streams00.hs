import Data.Char

-- TODO: Edit Comments

-- getContents | standard input stream | stdin

--   - similar to ReadFile in Go lang

--   - reads entire content of a file into memory until EOF is reached

--   - reads from the standard input stdin (the console / terminal)  unless the input stram is changed

main = do
    content <- getContents
    putStrLn (map toUpper content)

-- Reading a File by Piping

--   - you can pass a file as an argument to a program by piping

--   - pass the output of one program as the input of another program

--   - cat <some_file.txt> | runhaskell <some_program.hs>

--   - <command_that_Produces_some_output> | <some_program_that_accepts_produced_output_as_input>

--   - cat unix command: reads the contents of a file and prints it to the console







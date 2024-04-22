import Data.List
import System.Directory
import System.IO

-- TODO: comment code!!!
main = do
  tempDir <- getTemporaryDirectory
  (tempName, tempHandle) <- openTempFile tempDir "temp"
  putStrLn "\nWelcome to your personal TODO list.\n\nPlease type an option:\n\n- add\n\n- delete\n\n- close\n"

  selection <- getLine

  if selection == "add"
    then do
      putStrLn "\nEnter todo item:\n"
      todoItem <- getLine
      appendFile "todo.txt" (todoItem ++ "\n")
      main
    else
      if selection == "delete"
        then do
          file <- openFile "todo.txt" ReadWriteMode

          contents <- hGetContents file
          let todoTasks = lines contents
              numberedTodoTasks = zipWith (\n line -> show n ++ " - " ++ line) [0 ..] todoTasks
          putStrLn "\nCurrent todo tasks:\n\n"
          putStrLn $ unlines numberedTodoTasks
          deleteAtIndex <- getLine
          let index = read deleteAtIndex :: Int
              updatedTodoList = delete (todoTasks !! index) todoTasks
          hPutStr tempHandle $ unlines updatedTodoList
          hClose file
          hClose tempHandle
          removeFile "todo.txt"
          renameFile tempName "todo.txt"
          main
        else do putStrLn "\nTodo app closed successfully.\n"

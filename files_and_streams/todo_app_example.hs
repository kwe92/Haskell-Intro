{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use when" #-}
import System.IO

main = do
    
    putStrLn "\nWelcome to your personal TODO list.\n\nPlease type an option:\n\n- add\n\n- delete\n\n- close\n"
    
    selection <- getLine

    if selection == "add"
        then do
            putStrLn "\nEnter todo item:\n"
            todoItem <- getLine
            appendFile "todo.txt" ( todoItem ++ "\n")
            main
    else 
        do putStrLn "\nTodo app closed successfully.\n"
            

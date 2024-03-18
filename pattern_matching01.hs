-- TODO: edit Comments

-- as Patterns

--   - can break up an expression according to a pattern and bind  to indentifiers retaining the whole expression deconstructed
--   - useful if the expression deconstructed needs to be used on the function body
--   - syntax: identifier_holding_entire_expression @ some_pattern_deconstruction = expression
--   - used to keep code D.R.Y

-- Example Without As pattern

getFirstLetter :: String -> String
getFirstLetter "" = "Empty strings can not have a first letter..."
getFirstLetter [x] = "there is only one letter " ++ [x]
getFirstLetter (x : xs) = "the first letter in " ++ x : xs ++ " is " ++ [x]

-- Example With As pattern

getFirstLetter' :: String -> String
getFirstLetter' "" = "Empty strings can not have a first letter..."
getFirstLetter' [x] = "there is only one letter " ++ [x]
getFirstLetter' word@(head : tail) = "the first letter in " ++ word ++ " is " ++ [head] -- the String passed into the function is bound to the variable word | word = head : tail
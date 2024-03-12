-- Function Application Operator $

--   - allows you to make functions right associative
--   - meaning that you dont have to write as many parentheses to apply functions

-- Example sqrt function

-- sqrt 3 + 5 + 9 | returns the square root of 3 added to 5 + 9

-- sqrt (3 + 5 + 9) | returns the square root of 17 which is what we entended

-- sqrt $ 3 + 5 + 9 | returns the square root of 17 with parenttheses omitted

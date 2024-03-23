-- let in bindings

--   - let bindings allow you to bind values locally within most expressions

--   - let bindings are themselves expressions

--   - let bindings can be a way to have multiple values bound within a function body locally

--   - when used inline you need to separate each binding by a semicolon ;

--     semi colons can be omitted when used within function bodies on multiple lines

-- TODO: Edit Comments

-- let bindings and list comprehensions

--   - let bindings can be used inside of list comprehensions

--   - they are only visible to the output function

--   - there is not hoisting in a list comprehension so the let binding isn't visible to the binding from the iterables above it

--   - that are defined before predicate functions
--   - the in keyword is ommited as the binding is scoped to the output function

-- let in bindings && GHCI

--   - you can use let bindings in the interactive compiler to create global constants and functions
--     that are visbile for the life time of the session
--   - in keyword is ommited
--   - similar to using the var keyword in other languages when used in the interactive compiler

-- let in  binding syntax:

--   - let <bindings> in <expression>

-- let Example 1 | within the body of a function
cylinder :: (RealFloat a) => a -> a -> a
cylinder radius height =
  let sideArea = 2 * pi * radius * height
      topArea = pi * radius ^ 2
   in sideArea + 2 * topArea

-- let Example 2 | value bound to an identifier within an expression locally

x = 4 * (let a = 9 in a + 1) + 2

-- let Example 3 | function bound to an identifier within a list locally

n = [let square x = x * x in (square 42, square 10, square 25)]

-- let Example 4 | multiple values  bound to identifiers inline

val0 = (let a = 100; b = 200; c = 300 in a + b + c, let foo = "Lets"; bar = " BIND!" in foo ++ bar)

-- let Example 5 | destructuring a tuple and then using the valaues in an expression

someTuple = (32, 35, 76)

val1 = (let (a, b, c) = someTuple in a + b + c ** 2) * 42

-- let Example 6 | using let binding inside list comprehension

bmiCalc :: (RealFloat a) => [(a, a)] -> [a]
bmiCalc xs = [bmi | (w, h) <- xs, let bmi = w / h ** 2 * 703]

-- let Example 7 | using let binding inside list comprehension with predicate function

bmiCalc' :: (RealFloat a) => [(a, a)] -> [a]
bmiCalc' xs = [bmi | (w, h) <- xs, let bmi = w / h ** 2 * 703, bmi > 25]
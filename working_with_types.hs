import Data.Map as M

-- Either a b

--   - a type constructor in haskell
--   - takes two type parameters and returns a new type
--     representing a value that can be of either type passed in
--   - can be applied to any two types to create a new type
--   - best used in conditional expressions where you want to return a value or some informative String

-- Example: Available Locker Code FInder

data LockerState = Taken | Free deriving (Eq, Show) -- type definition | Enum representing locker state

type Code = String -- type synonym (type alias) representing the code of a locker

type LockerNumber = Int

type LockerMap = M.Map LockerNumber (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code -- type declaration
lockerLookup lockerNumber map =
  case M.lookup lockerNumber map of
    Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist."
    Just (state, code) ->
      if state /= Taken
        then Right code
        else Left $ "Locker number " ++ show lockerNumber ++ " is already taken, please select another locker number."

lockers :: LockerMap =
  M.fromList
    [ (1001, (Taken, "AD3432")),
      (1002, (Free, "4242DS")),
      (1003, (Taken, "GH7689")),
      (1004, (Free, "78PJHG")),
      (1005, (Free, "LEBI19"))
    ]

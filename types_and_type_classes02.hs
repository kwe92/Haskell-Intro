-- TODO: Refactor Comments

-- Record Syntax

--   - using curly brackets (Structs) to define fields of a value constructor
--     as to automatically create getter functions to access fields by name
--   - each field name will have an associated getter function automatically created

--   - using Record Syntax Benefits:

--       - saves you from needing to manually define getter functions for fields of a ADT (Abstract Data Type / Struct)
--       - Show type class prints out the field value pair as to make meaning easier interpret
--       - saves you from needing to type alias parameters in a value constructor to give them meaning maybe....[]

-- Example Person Data Type using Record Syntax

data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int,
    heightIN :: Int,
    phoneNumber :: String
  }
  deriving (Show)

baki :: Person
baki = Person "Baki" "Hanma" 14 72 "123-456-7890" -- printing baki to the console results in:
--                                                      - Person {firstName = "Baki", lastName = "Hanma", age = 14, heightIN = 72, phoneNumber = "123-456-7890"}

fnFunc :: Person -> String
fnFunc = firstName

fn :: String
fn = firstName baki

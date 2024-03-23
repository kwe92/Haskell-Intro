-- TODO: Add Comments of Functions and Recursive Data Types

-- TODO: Breakdown the functions you have trouble with on paper

-- data Tree a = EmptyTree | Node {
--     val:: a
--   , lchild :: Tree a
--   , rchild :: Tree a
-- } deriving (Show, Eq, Read)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Eq, Read)

instance Functor Tree where
    fmap :: (a -> b) -> Tree a -> Tree b
    fmap _ EmptyTree = EmptyTree
    fmap f (Node val ltree rtree) = Node (f val) (fmap f ltree) (fmap f rtree)

createTree :: a-> Tree a

createTree val = Node val EmptyTree EmptyTree

tree00 = createTree 5

insert :: (Ord a) => a -> Tree a -> Tree a

insert val EmptyTree = createTree val

insert val (Node tval lchild rchild)

    | val == tval = Node val lchild rchild

    | val < tval = Node tval (insert val lchild) rchild

    | val > tval = Node tval  lchild (insert val rchild)

tree01 = insert 42.insert 10.insert 4.insert 45.insert 3 $ tree00

contains :: (Ord a) => a-> Tree a -> Bool

contains val EmptyTree = False

contains val (Node tval lchild rchild)

    | val == tval = True

    | val < tval = contains val lchild

    | val > tval = contains val rchild

toList :: Tree a -> [a]

toList EmptyTree = []

toList (Node val lchild rchild) =
    let leftarr = toList lchild
        rightarr = toList rchild
        in val : leftarr ++ rightarr


fromList :: (Ord a)=> [a] -> Tree a -> Tree a

fromList [] tree = tree
fromList [a] EmptyTree = createTree a
fromList (x:xs) EmptyTree = fromList xs(createTree x)
fromList (x:xs) tree = fromList xs (insert x tree)

arr0 = [5,3,7,1,4,6,8]

arr1 =  [8,6,4,1,7,3,5]

tree02 :: Tree Integer
tree02 = fromList arr0 EmptyTree

tree03 :: Tree Integer
tree03 = foldr insert EmptyTree arr1


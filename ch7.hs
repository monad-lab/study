codelab = error "NotImplemented"

------------------------------------
-- Chap7
------------------------------------
data MyList a = Nil | Cons a (MyList a) deriving (Show)

instance Functor MyList where
  fmap f Nil = Nil
  fmap f (Cons x xs) = Cons (f x) (fmap f xs)

mymap f Nil = Nil
mymap f (Cons a b) = Cons (f a) (mymap f b)

  
main :: IO ()
main = do
  print $ "chap7"
  print $ fmap (+1) [1,2,3]                         -- [2,3,4]
  print $ mymap (+1) (Cons 1 (Cons 2 (Cons 3 Nil)))  --Cons 2 (Cons 3 (Cons 4 Nil))
  print $ fmap (+1) (Cons 1 (Cons 2 (Cons 3 Nil)))
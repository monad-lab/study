codelab = error "NotImplemented"

------------------------------------
-- Chap7
------------------------------------
data MyList a = Nil | Cons a (MyList a) deriving (Show)

mymap f Nil = Nil
mymap f (Cons a b) = Cons (f a) (mymap f b)

-- FIXME: error. Couldn't match type 'a' with 'b'
instance Functor MyList where
  fmap f Nil = Nil
  fmap f (Cons x y) = codelab
  
main :: IO ()
main = do
  print $ "chap7"
  print $ fmap (+1) [1,2,3]                         -- [2,3,4]
  print $ mymap (+1) (Cons 1 (Cons 2 (Cons 3 Nil)))  --Cons 2 (Cons 3 (Cons 4 Nil))
  -- FIXME
  --print $ fmap (+1) (Cons 1 (Cons 2 (Cons 3 Nil)))
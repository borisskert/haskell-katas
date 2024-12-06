module CanYouGetTheLoop.Types (Node (..), next) where

data Node a = Node a (Node a)

instance (Eq a) => Eq (Node a) where
  (Node x _) == (Node y _) = x == y

next :: Node a -> Node a
next (Node x node) = node

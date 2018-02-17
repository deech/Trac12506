{-# LANGUAGE KindSignatures, TypeFamilies, UndecidableInstances, MultiParamTypeClasses, FlexibleInstances, FlexibleContexts, ScopedTypeVariables #-}
module TypeFunctions
where

data Same
data Different

data Match a
data NoFunction a b

type family Contains as a where
  Contains () (x ()) = Different
  Contains (a as) (a ()) = Same
  Contains (a as) (b ()) = Contains as (b ())

type family FindOpHelper orig hierarchy  (needle :: *) (found :: *) :: * where
  FindOpHelper orig hierarchy needle Same = Match hierarchy
  FindOpHelper orig (child ancestors) needle Different = FindOp orig ancestors needle


type family FindOp orig hierarchy (needle :: *) :: * where
  FindOp orig () n = NoFunction n orig
  FindOp orig hierarchy needle = FindOpHelper orig hierarchy needle (Contains (Functions hierarchy) needle)

data InHierarchy
data NotInHierarchy a b

type family FindInHierarchy (needle :: * ) (curr :: *) (haystack :: *) :: * where
  FindInHierarchy needle () (a as) = NotInHierarchy needle (a as)
  FindInHierarchy needle (a as) (a as) = InHierarchy
  FindInHierarchy needle (a as) (b bs) = FindInHierarchy needle as (b bs)

class Parent a b
instance (InHierarchy ~ FindInHierarchy a a b) => Parent a b

type family Functions (x :: *) :: *

class Op op obj origObj impl where
  runOp :: op -> origObj -> (Ref obj) -> impl

data Ref a = Ref ()

castTo :: Ref a -> Ref r
castTo (Ref x) = (Ref x)

dispatch :: forall op obj origObj impl.
            (
              Match obj ~ FindOp origObj origObj op,
              Op op obj origObj impl
            ) =>
            op -> Ref origObj -> impl
dispatch op refOrig = runOp op (undefined :: origObj) ((castTo refOrig) :: Ref obj)

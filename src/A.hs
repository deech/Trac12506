{-# LANGUAGE TypeSynonymInstances, FlexibleInstances, MultiParamTypeClasses, TypeFamilies #-}
module A where
import TypeFunctions
import Hierarchy

instance (impl ~ IO ()) => Op (A30 ()) A orig impl where
  runOp _ _ _ = putStrLn "A30"

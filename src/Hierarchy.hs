{-# LANGUAGE TypeSynonymInstances, TypeFamilies, FlexibleContexts, EmptyDataDecls #-}
module Hierarchy where
import TypeFunctions
import System.IO.Unsafe

a30 :: (Match r ~ FindOp a a (A30 ()), Op (A30 ()) r a impl) => Ref a -> impl
a30 aRef = dispatch (undefined :: A30 ()) aRef

data CBase parent
type Base = CBase ()

data CA parent
type A = CA Base
type AMembers =
 (A0
 (A1
 (A2
 (A3
 (A4
 (A5
 (A6
 (A7
 (A8
 (A9
 (A10
 (A11
 (A12
 (A13
 (A14
 (A15
 (A16
 (A17
 (A18
 (A19
 (A20
 (A21
 (A22
 (A23
 (A24
 (A25
 (A26
 (A27
 (A28
 (A29
 (A30
 ())))))))))))))))))))))))))))))))
type instance Functions A = AMembers

data CB parent
type B = CB A
type BMembers =
 (B0
 (B1
 (B2
 (B3
 (B4
 (B5
 (B6
 (B7
 (B8
 (B9
 (B10
 (B11
 (B12
 (B13
 (B14
 (B15
 (B16
 (B17
 (B18
 (B19
 (B20
 (B21
 (B22
 (B23
 (B24
 (B25
 (B26
 (B27
 (B28
 (B29
 (B30
 ())))))))))))))))))))))))))))))))

type instance Functions B = BMembers


data CC parent
type C = CC A
type CMembers =
 (C0
 (C1
 (C2
 (C3
 (C4
 (C5
 (C6
 (C7
 (C8
 (C9
 (C10
 (C11
 (C12
 (C13
 (C14
 (C15
 (C16
 (C17
 (C18
 (C19
 (C20
 (C21
 (C22
 (C23
 (C24
 (C25
 (C26
 (C27
 (C28
 (C29
 (C30
 ())))))))))))))))))))))))))))))))

type instance Functions C = CMembers

data CD parent
type D = CD C
type instance Functions D = ()

data A0 a
data A1 a
data A2 a
data A3 a
data A4 a
data A5 a
data A6 a
data A7 a
data A8 a
data A9 a
data A10 a
data A11 a
data A12 a
data A13 a
data A14 a
data A15 a
data A16 a
data A17 a
data A18 a
data A19 a
data A20 a
data A21 a
data A22 a
data A23 a
data A24 a
data A25 a
data A26 a
data A27 a
data A28 a
data A29 a
data A30 a
data B0 a
data B1 a
data B2 a
data B3 a
data B4 a
data B5 a
data B6 a
data B7 a
data B8 a
data B9 a
data B10 a
data B11 a
data B12 a
data B13 a
data B14 a
data B15 a
data B16 a
data B17 a
data B18 a
data B19 a
data B20 a
data B21 a
data B22 a
data B23 a
data B24 a
data B25 a
data B26 a
data B27 a
data B28 a
data B29 a
data B30 a
data C0 a
data C1 a
data C2 a
data C3 a
data C4 a
data C5 a
data C6 a
data C7 a
data C8 a
data C9 a
data C10 a
data C11 a
data C12 a
data C13 a
data C14 a
data C15 a
data C16 a
data C17 a
data C18 a
data C19 a
data C20 a
data C21 a
data C22 a
data C23 a
data C24 a
data C25 a
data C26 a
data C27 a
data C28 a
data C29 a
data C30 a

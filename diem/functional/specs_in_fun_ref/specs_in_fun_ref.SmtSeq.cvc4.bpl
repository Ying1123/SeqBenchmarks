
// ** Expanded prelude

// Copyright (c) The Diem Core Contributors
// SPDX-License-Identifier: Apache-2.0

// Boogie model for vectors, based on Z3 sequences.
//
// This version of vectors has extensional equality.
//
// This implementation works to some extend but has been so far been much slower/times out compared to
// non-extensional array versions, even though the later require stratified custom equality.
//
// Major issues seem to be:
//
// (a) UpdateVec, SwapVec etc. are slow. UpdateVec requires a ConcatVec of two SliceVec.
// (b) ReverseVec needs to be fully axiomatized with quantifiers which makes it infeasible
//     to work in practice.

type {:builtin "Seq"} Vec _;

function {:builtin "seq.empty"} EmptyVec<T>(): Vec T;

function {:builtin "seq.unit"} MakeVec1<T>(v: T): Vec T;

function {:inline} MakeVec2<T>(v1: T, v2: T): Vec T {
    ConcatVec(MakeVec1(v1), MakeVec1(v2))
}

function {:inline} MakeVec3<T>(v1: T, v2: T, v3: T): Vec T {
    ConcatVec(MakeVec2(v1, v2), MakeVec1(v3))
}

function {:inline} MakeVec4<T>(v1: T, v2: T, v3: T, v4: T): Vec T {
    ConcatVec(MakeVec3(v1, v2, v3), MakeVec1(v4))
}

function {:inline} ExtendVec<T>(v: Vec T, elem: T): Vec T {
    ConcatVec(v, MakeVec1(elem))
}

function {:builtin "seq.nth"} ReadVec<T>(v: Vec T, i: int): T;

function {:builtin "seq.len"} LenVec<T>(v: Vec T): int;

function {:inline} IsEmptyVec<T>(v: Vec T): bool {
    LenVec(v) == 0
}

function {:inline} RemoveVec<T>(v: Vec T): Vec T {
    SliceVec(v, 0, LenVec(v) - 1)
}

function {:inline} RemoveAtVec<T>(v: Vec T, i: int): Vec T {
    ConcatVec(SliceVec(v, 0, i), SliceVec(v, i + 1, LenVec(v)))
}

function {:builtin "seq.++"} ConcatVec<T>(v1: Vec T, v2: Vec T): Vec T;
/*private*/ function {:builtin "seq.++"} ConcatVec3<T>(v1: Vec T, v2: Vec T, v3: Vec T): Vec T;
/*private*/ function {:builtin "seq.++"} ConcatVec4<T>(v1: Vec T, v2: Vec T, v3: Vec T, v4: Vec T): Vec T;
/*private*/ function {:builtin "seq.++"} ConcatVec5<T>(v1: Vec T, v2: Vec T, v3: Vec T, v4: Vec T, v5: Vec T): Vec T;

function {:inline} ReverseVec<T>(v: Vec T): Vec T;
axiom {:ctor "Vec"} (forall<T> v: Vec T:: {ReverseVec(v)}
        (var r := ReverseVec(v);
         LenVec(r) == LenVec(v) &&
         (forall i: int:: {ReadVec(r, i)} i >= 0 && i < LenVec(r) ==> ReadVec(r, i) == ReadVec(v, LenVec(v) - i - 1))));

function {:inline} SliceVec<T>(v: Vec T, i: int, j: int): Vec T {
    ExtractVec(v, i, j - i)
}
/*private*/ function {:builtin "seq.extract"} ExtractVec<T>(v: Vec T, start: int, len: int): Vec T;

function {:inline} UpdateVec<T>(v: Vec T, i: int, elem: T): Vec T {
    ConcatVec3(SliceVec(v, 0, i), MakeVec1(elem), SliceVec(v, i + 1, LenVec(v)))
}

function {:inline} SwapVec<T>(v: Vec T, i: int, j: int): Vec T {
    UpdateVec(UpdateVec(v, j, ReadVec(v, i)), i, ReadVec(v, j))
}

function {:inline} ContainsVec<T>(v: Vec T, e: T): bool {
    ContainsSubVec(v, MakeVec1(e))
}
/*private*/ function {:builtin "seq.contains"} ContainsSubVec<T>(v: Vec T, sub: Vec T): bool;

function {:inline} IndexOfVec<T>(v: Vec T, e: T): int {
    IndexOfSubVec(v, MakeVec1(e))
}
/*private*/ function {:builtin "seq.indexof"} IndexOfSubVec<T>(v: Vec T, sub: Vec T): int;

function {:inline} InRangeVec<T>(v: Vec T, i: int): bool {
    i >= 0 && i < LenVec(v)
}

// Copyright (c) The Diem Core Contributors
// SPDX-License-Identifier: Apache-2.0

// Boogie model for multisets, based on Boogie arrays. This theory assumes extensional equality for element types.

type {:datatype} Multiset _;
function {:constructor} Multiset<T>(v: [T]int, l: int): Multiset T;

function {:builtin "MapConst"} MapConstMultiset<T>(l: int): [T]int;

function {:inline} EmptyMultiset<T>(): Multiset T {
    Multiset(MapConstMultiset(0), 0)
}

function {:inline} LenMultiset<T>(s: Multiset T): int {
    l#Multiset(s)
}

function {:inline} ExtendMultiset<T>(s: Multiset T, v: T): Multiset T {
    (var len := l#Multiset(s);
    (var cnt := v#Multiset(s)[v];
    Multiset(v#Multiset(s)[v := (cnt + 1)], len + 1)))
}

// This function returns (s1 - s2). This function assumes that s2 is a subset of s1.
function {:inline} SubtractMultiset<T>(s1: Multiset T, s2: Multiset T): Multiset T {
    (var len1 := l#Multiset(s1);
    (var len2 := l#Multiset(s2);
    Multiset((lambda v:T :: v#Multiset(s1)[v]-v#Multiset(s2)[v]), len1-len2)))
}

function {:inline} IsEmptyMultiset<T>(s: Multiset T): bool {
    (l#Multiset(s) == 0) &&
    (forall v: T :: v#Multiset(s)[v] == 0)
}

function {:inline} IsSubsetMultiset<T>(s1: Multiset T, s2: Multiset T): bool {
    (l#Multiset(s1) <= l#Multiset(s2)) &&
    (forall v: T :: v#Multiset(s1)[v] <= v#Multiset(s2)[v])
}

function {:inline} ContainsMultiset<T>(s: Multiset T, v: T): bool {
    v#Multiset(s)[v] > 0
}



// ============================================================================================
// Primitive Types

const $MAX_U8: int;
axiom $MAX_U8 == 255;
const $MAX_U64: int;
axiom $MAX_U64 == 18446744073709551615;
const $MAX_U128: int;
axiom $MAX_U128 == 340282366920938463463374607431768211455;

type {:datatype} $Range;
function {:constructor} $Range(lb: int, ub: int): $Range;

function {:inline} $IsValid'bool'(v: bool): bool {
  true
}

function $IsValid'u8'(v: int): bool {
  v >= 0 && v <= $MAX_U8
}

function $IsValid'u64'(v: int): bool {
  v >= 0 && v <= $MAX_U64
}

function $IsValid'u128'(v: int): bool {
  v >= 0 && v <= $MAX_U128
}

function $IsValid'num'(v: int): bool {
  true
}

function $IsValid'address'(v: int): bool {
  // TODO: restrict max to representable addresses?
  v >= 0
}

function {:inline} $IsValidRange(r: $Range): bool {
   $IsValid'u64'(lb#$Range(r)) &&  $IsValid'u64'(ub#$Range(r))
}

// Intentionally not inlined so it serves as a trigger in quantifiers.
function $InRange(r: $Range, i: int): bool {
   lb#$Range(r) <= i && i < ub#$Range(r)
}


function {:inline} $IsEqual'u8'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'u64'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'u128'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'num'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'address'(x: int, y: int): bool {
    x == y
}

function {:inline} $IsEqual'bool'(x: bool, y: bool): bool {
    x == y
}

// ============================================================================================
// Memory

type {:datatype} $Location;

// A global resource location within the statically known resource type's memory,
// where `a` is an address.
function {:constructor} $Global(a: int): $Location;

// A local location. `i` is the unique index of the local.
function {:constructor} $Local(i: int): $Location;

// The location of a reference outside of the verification scope, for example, a `&mut` parameter
// of the function being verified. References with these locations don't need to be written back
// when mutation ends.
function {:constructor} $Param(i: int): $Location;


// A mutable reference which also carries its current value. Since mutable references
// are single threaded in Move, we can keep them together and treat them as a value
// during mutation until the point they are stored back to their original location.
type {:datatype} $Mutation _;
function {:constructor} $Mutation<T>(l: $Location, p: Vec int, v: T): $Mutation T;

// Representation of memory for a given type.
type {:datatype} $Memory _;
function {:constructor} $Memory<T>(domain: [int]bool, contents: [int]T): $Memory T;

function {:builtin "MapConst"} $ConstMemoryDomain(v: bool): [int]bool;
function {:builtin "MapConst"} $ConstMemoryContent<T>(v: T): [int]T;
axiom $ConstMemoryDomain(false) == (lambda i: int :: false);
axiom $ConstMemoryDomain(true) == (lambda i: int :: true);


// Dereferences a mutation.
function {:inline} $Dereference<T>(ref: $Mutation T): T {
    v#$Mutation(ref)
}

// Update the value of a mutation.
function {:inline} $UpdateMutation<T>(m: $Mutation T, v: T): $Mutation T {
    $Mutation(l#$Mutation(m), p#$Mutation(m), v)
}

function {:inline} $ChildMutation<T1, T2>(m: $Mutation T1, offset: int, v: T2): $Mutation T2 {
    $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), offset), v)
}

// Return true of the mutation is a parent of a child which was derived with the given edge offset. This
// is used to implement write-back choices.
function {:inline} $IsParentMutation<T1, T2>(parent: $Mutation T1, edge: int, child: $Mutation T2 ): bool {
    l#$Mutation(parent) == l#$Mutation(child) &&
    (var pp := p#$Mutation(parent);
    (var cp := p#$Mutation(child);
    (var pl := LenVec(pp);
    (var cl := LenVec(cp);
     cl == pl + 1 &&
     (forall i: int:: i >= 0 && i < pl ==> ReadVec(pp, i) ==  ReadVec(cp, i)) &&
     $EdgeMatches(ReadVec(cp, pl), edge)
    ))))
}

// Return true of the mutation is a parent of a child, for hyper edge.
function {:inline} $IsParentMutationHyper<T1, T2>(parent: $Mutation T1, hyper_edge: Vec int, child: $Mutation T2 ): bool {
    l#$Mutation(parent) == l#$Mutation(child) &&
    (var pp := p#$Mutation(parent);
    (var cp := p#$Mutation(child);
    (var pl := LenVec(pp);
    (var cl := LenVec(cp);
    (var el := LenVec(hyper_edge);
     cl == pl + el &&
     (forall i: int:: i >= 0 && i < pl ==> ReadVec(pp, i) == ReadVec(cp, i)) &&
     (forall i: int:: i >= 0 && i < el ==> $EdgeMatches(ReadVec(cp, pl + i), ReadVec(hyper_edge, i)))
    )))))
}

function {:inline} $EdgeMatches(edge: int, edge_pattern: int): bool {
    edge_pattern == -1 // wildcard
    || edge_pattern == edge
}



function {:inline} $SameLocation<T1, T2>(m1: $Mutation T1, m2: $Mutation T2): bool {
    l#$Mutation(m1) == l#$Mutation(m2)
}

function {:inline} $HasGlobalLocation<T>(m: $Mutation T): bool {
    is#$Global(l#$Mutation(m))
}

function {:inline} $HasLocalLocation<T>(m: $Mutation T, idx: int): bool {
    l#$Mutation(m) == $Local(idx)
}

function {:inline} $GlobalLocationAddress<T>(m: $Mutation T): int {
    a#$Global(l#$Mutation(m))
}



// Tests whether resource exists.
function {:inline} $ResourceExists<T>(m: $Memory T, addr: int): bool {
    domain#$Memory(m)[addr]
}

// Obtains Value of given resource.
function {:inline} $ResourceValue<T>(m: $Memory T, addr: int): T {
    contents#$Memory(m)[addr]
}

// Update resource.
function {:inline} $ResourceUpdate<T>(m: $Memory T, a: int, v: T): $Memory T {
    $Memory(domain#$Memory(m)[a := true], contents#$Memory(m)[a := v])
}

// Remove resource.
function {:inline} $ResourceRemove<T>(m: $Memory T, a: int): $Memory T {
    $Memory(domain#$Memory(m)[a := false], contents#$Memory(m))
}

// Copies resource from memory s to m.
function {:inline} $ResourceCopy<T>(m: $Memory T, s: $Memory T, a: int): $Memory T {
    $Memory(domain#$Memory(m)[a := domain#$Memory(s)[a]],
            contents#$Memory(m)[a := contents#$Memory(s)[a]])
}



// ============================================================================================
// Abort Handling

var $abort_flag: bool;
var $abort_code: int;

function {:inline} $process_abort_code(code: int): int {
    code
}

const $EXEC_FAILURE_CODE: int;
axiom $EXEC_FAILURE_CODE == -1;

// TODO(wrwg): currently we map aborts of native functions like those for vectors also to
//   execution failure. This may need to be aligned with what the runtime actually does.

procedure {:inline 1} $ExecFailureAbort() {
    $abort_flag := true;
    $abort_code := $EXEC_FAILURE_CODE;
}

procedure {:inline 1} $InitVerification() {
    // Set abort_flag to false, and havoc abort_code
    $abort_flag := false;
    havoc $abort_code;
    // Initialize event store
    call $InitEventStore();
}

// ============================================================================================
// Instructions


procedure {:inline 1} $CastU8(src: int) returns (dst: int)
{
    if (src > $MAX_U8) {
        call $ExecFailureAbort();
        return;
    }
    dst := src;
}

procedure {:inline 1} $CastU64(src: int) returns (dst: int)
{
    if (src > $MAX_U64) {
        call $ExecFailureAbort();
        return;
    }
    dst := src;
}

procedure {:inline 1} $CastU128(src: int) returns (dst: int)
{
    if (src > $MAX_U128) {
        call $ExecFailureAbort();
        return;
    }
    dst := src;
}

procedure {:inline 1} $AddU8(src1: int, src2: int) returns (dst: int)
{
    if (src1 + src2 > $MAX_U8) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 + src2;
}

procedure {:inline 1} $AddU64(src1: int, src2: int) returns (dst: int)
{
    if (src1 + src2 > $MAX_U64) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 + src2;
}

procedure {:inline 1} $AddU64_unchecked(src1: int, src2: int) returns (dst: int)
{
    dst := src1 + src2;
}

procedure {:inline 1} $AddU128(src1: int, src2: int) returns (dst: int)
{
    if (src1 + src2 > $MAX_U128) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 + src2;
}

procedure {:inline 1} $AddU128_unchecked(src1: int, src2: int) returns (dst: int)
{
    dst := src1 + src2;
}

procedure {:inline 1} $Sub(src1: int, src2: int) returns (dst: int)
{
    if (src1 < src2) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 - src2;
}

// Note that *not* inlining the shl/shr functions avoids timeouts. It appears that Z3 can reason
// better about this if it is an axiomatized function.
function $shl(src1: int, p: int): int {
    if p == 8 then src1 * 256
    else if p == 16 then src1 * 65536
    else if p == 32 then src1 * 4294967296
    else if p == 64 then src1 * 18446744073709551616
    // Value is undefined, otherwise.
    else -1
}

function $shr(src1: int, p: int): int {
    if p == 8 then src1 div 256
    else if p == 16 then src1 div 65536
    else if p == 32 then src1 div 4294967296
    else if p == 64 then src1 div 18446744073709551616
    // Value is undefined, otherwise.
    else -1
}

// TODO: fix this and $Shr to drop bits on overflow. Requires $Shl8, $Shl64, and $Shl128
procedure {:inline 1} $Shl(src1: int, src2: int) returns (dst: int)
{
    var res: int;
    res := $shl(src1, src2);
    assert res >= 0;   // restriction: shift argument must be 8, 16, 32, or 64
    dst := res;
}

procedure {:inline 1} $Shr(src1: int, src2: int) returns (dst: int)
{
    var res: int;
    res := $shr(src1, src2);
    assert res >= 0;   // restriction: shift argument must be 8, 16, 32, or 64
    dst := res;
}

procedure {:inline 1} $MulU8(src1: int, src2: int) returns (dst: int)
{
    if (src1 * src2 > $MAX_U8) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 * src2;
}

procedure {:inline 1} $MulU64(src1: int, src2: int) returns (dst: int)
{
    if (src1 * src2 > $MAX_U64) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 * src2;
}

procedure {:inline 1} $MulU128(src1: int, src2: int) returns (dst: int)
{
    if (src1 * src2 > $MAX_U128) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 * src2;
}

procedure {:inline 1} $Div(src1: int, src2: int) returns (dst: int)
{
    if (src2 == 0) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 div src2;
}

procedure {:inline 1} $Mod(src1: int, src2: int) returns (dst: int)
{
    if (src2 == 0) {
        call $ExecFailureAbort();
        return;
    }
    dst := src1 mod src2;
}

procedure {:inline 1} $ArithBinaryUnimplemented(src1: int, src2: int) returns (dst: int);

procedure {:inline 1} $Lt(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 < src2;
}

procedure {:inline 1} $Gt(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 > src2;
}

procedure {:inline 1} $Le(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 <= src2;
}

procedure {:inline 1} $Ge(src1: int, src2: int) returns (dst: bool)
{
    dst := src1 >= src2;
}

procedure {:inline 1} $And(src1: bool, src2: bool) returns (dst: bool)
{
    dst := src1 && src2;
}

procedure {:inline 1} $Or(src1: bool, src2: bool) returns (dst: bool)
{
    dst := src1 || src2;
}

procedure {:inline 1} $Not(src: bool) returns (dst: bool)
{
    dst := !src;
}

// Pack and Unpack are auto-generated for each type T


// ==================================================================================
// Native Vector

function {:inline} $SliceVecByRange<T>(v: Vec T, r: $Range): Vec T {
    SliceVec(v, lb#$Range(r), ub#$Range(r))
}

// ----------------------------------------------------------------------------------
// Native Vector implementation for element type `u8`


function {:inline} $IsEqual'vec'u8''(v1: Vec (int), v2: Vec (int)): bool {
    v1 == v2
}

// Not inlined.
function $IsValid'vec'u8''(v: Vec (int)): bool {
    $IsValid'u64'(LenVec(v)) &&
    (forall i: int:: InRangeVec(v, i) ==> $IsValid'u8'(ReadVec(v, i)))
}


function {:inline} $ContainsVec'u8'(v: Vec (int), e: int): bool {
    (exists i: int :: $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u8'(ReadVec(v, i), e))
}

function $IndexOfVec'u8'(v: Vec (int), e: int): int;
axiom (forall v: Vec (int), e: int:: {$IndexOfVec'u8'(v, e)}
    (var i := $IndexOfVec'u8'(v, e);
     if (!$ContainsVec'u8'(v, e)) then i == -1
     else $IsValid'u64'(i) && InRangeVec(v, i) && $IsEqual'u8'(ReadVec(v, i), e) &&
        (forall j: int :: $IsValid'u64'(j) && j >= 0 && j < i ==> !$IsEqual'u8'(ReadVec(v, j), e))));


function {:inline} $RangeVec'u8'(v: Vec (int)): $Range {
    $Range(0, LenVec(v))
}


function {:inline} $EmptyVec'u8'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_empty'u8'() returns (v: Vec (int)) {
    v := EmptyVec();
}

function {:inline} $1_Vector_$empty'u8'(): Vec (int) {
    EmptyVec()
}

procedure {:inline 1} $1_Vector_is_empty'u8'(v: Vec (int)) returns (b: bool) {
    b := IsEmptyVec(v);
}

procedure {:inline 1} $1_Vector_push_back'u8'(m: $Mutation (Vec (int)), val: int) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ExtendVec($Dereference(m), val));
}

function {:inline} $1_Vector_$push_back'u8'(v: Vec (int), val: int): Vec (int) {
    ExtendVec(v, val)
}

procedure {:inline 1} $1_Vector_pop_back'u8'(m: $Mutation (Vec (int))) returns (e: int, m': $Mutation (Vec (int))) {
    var v: Vec (int);
    var len: int;
    v := $Dereference(m);
    len := LenVec(v);
    if (len == 0) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, len-1);
    m' := $UpdateMutation(m, RemoveVec(v));
}

procedure {:inline 1} $1_Vector_append'u8'(m: $Mutation (Vec (int)), other: Vec (int)) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ConcatVec($Dereference(m), other));
}

procedure {:inline 1} $1_Vector_reverse'u8'(m: $Mutation (Vec (int))) returns (m': $Mutation (Vec (int))) {
    m' := $UpdateMutation(m, ReverseVec($Dereference(m)));
}

procedure {:inline 1} $1_Vector_length'u8'(v: Vec (int)) returns (l: int) {
    l := LenVec(v);
}

function {:inline} $1_Vector_$length'u8'(v: Vec (int)): int {
    LenVec(v)
}

procedure {:inline 1} $1_Vector_borrow'u8'(v: Vec (int), i: int) returns (dst: int) {
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    dst := ReadVec(v, i);
}

function {:inline} $1_Vector_$borrow'u8'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_borrow_mut'u8'(m: $Mutation (Vec (int)), index: int)
returns (dst: $Mutation (int), m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, index)) {
        call $ExecFailureAbort();
        return;
    }
    dst := $Mutation(l#$Mutation(m), ExtendVec(p#$Mutation(m), index), ReadVec(v, index));
    m' := m;
}

function {:inline} $1_Vector_$borrow_mut'u8'(v: Vec (int), i: int): int {
    ReadVec(v, i)
}

procedure {:inline 1} $1_Vector_destroy_empty'u8'(v: Vec (int)) {
    if (!IsEmptyVec(v)) {
      call $ExecFailureAbort();
    }
}

procedure {:inline 1} $1_Vector_swap'u8'(m: $Mutation (Vec (int)), i: int, j: int) returns (m': $Mutation (Vec (int)))
{
    var v: Vec (int);
    v := $Dereference(m);
    if (!InRangeVec(v, i) || !InRangeVec(v, j)) {
        call $ExecFailureAbort();
        return;
    }
    m' := $UpdateMutation(m, SwapVec(v, i, j));
}

function {:inline} $1_Vector_$swap'u8'(v: Vec (int), i: int, j: int): Vec (int) {
    SwapVec(v, i, j)
}

procedure {:inline 1} $1_Vector_remove'u8'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
{
    var v: Vec (int);

    v := $Dereference(m);

    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveAtVec(v, i));
}

procedure {:inline 1} $1_Vector_swap_remove'u8'(m: $Mutation (Vec (int)), i: int) returns (e: int, m': $Mutation (Vec (int)))
{
    var len: int;
    var v: Vec (int);

    v := $Dereference(m);
    len := LenVec(v);
    if (!InRangeVec(v, i)) {
        call $ExecFailureAbort();
        return;
    }
    e := ReadVec(v, i);
    m' := $UpdateMutation(m, RemoveVec(SwapVec(v, i, len-1)));
}

procedure {:inline 1} $1_Vector_contains'u8'(v: Vec (int), e: int) returns (res: bool)  {
    res := $ContainsVec'u8'(v, e);
}

procedure {:inline 1}
$1_Vector_index_of'u8'(v: Vec (int), e: int) returns (res1: bool, res2: int) {
    res2 := $IndexOfVec'u8'(v, e);
    if (res2 >= 0) {
        res1 := true;
    } else {
        res1 := false;
        res2 := 0;
    }
}


// ==================================================================================
// Native Hash

// Hash is modeled as an otherwise uninterpreted injection.
// In truth, it is not an injection since the domain has greater cardinality
// (arbitrary length vectors) than the co-domain (vectors of length 32).  But it is
// common to assume in code there are no hash collisions in practice.  Fortunately,
// Boogie is not smart enough to recognized that there is an inconsistency.
// FIXME: If we were using a reliable extensional theory of arrays, and if we could use ==
// instead of $IsEqual, we might be able to avoid so many quantified formulas by
// using a sha2_inverse function in the ensures conditions of Hash_sha2_256 to
// assert that sha2/3 are injections without using global quantified axioms.


function $1_Hash_sha2(val: Vec int): Vec int;

// This says that Hash_sha2 is bijective.
axiom (forall v1,v2: Vec int :: {$1_Hash_sha2(v1), $1_Hash_sha2(v2)}
       $IsEqual'vec'u8''(v1, v2) <==> $IsEqual'vec'u8''($1_Hash_sha2(v1), $1_Hash_sha2(v2)));

procedure $1_Hash_sha2_256(val: Vec int) returns (res: Vec int);
ensures res == $1_Hash_sha2(val);     // returns Hash_sha2 Value
ensures $IsValid'vec'u8''(res);    // result is a legal vector of U8s.
ensures LenVec(res) == 32;               // result is 32 bytes.

// Spec version of Move native function.
function {:inline} $1_Hash_$sha2_256(val: Vec int): Vec int {
    $1_Hash_sha2(val)
}

// similarly for Hash_sha3
function $1_Hash_sha3(val: Vec int): Vec int;

axiom (forall v1,v2: Vec int :: {$1_Hash_sha3(v1), $1_Hash_sha3(v2)}
       $IsEqual'vec'u8''(v1, v2) <==> $IsEqual'vec'u8''($1_Hash_sha3(v1), $1_Hash_sha3(v2)));

procedure $1_Hash_sha3_256(val: Vec int) returns (res: Vec int);
ensures res == $1_Hash_sha3(val);     // returns Hash_sha3 Value
ensures $IsValid'vec'u8''(res);    // result is a legal vector of U8s.
ensures LenVec(res) == 32;               // result is 32 bytes.

// Spec version of Move native function.
function {:inline} $1_Hash_$sha3_256(val: Vec int): Vec int {
    $1_Hash_sha3(val)
}

// ==================================================================================
// Native diem_account

procedure {:inline 1} $1_DiemAccount_create_signer(
  addr: int
) returns (signer: int) {
    // A signer is currently identical to an address.
    signer := addr;
}

procedure {:inline 1} $1_DiemAccount_destroy_signer(
  signer: int
) {
  return;
}

// ==================================================================================
// Native Signer

procedure {:inline 1} $1_Signer_borrow_address(signer: int) returns (res: int) {
    res := signer;
}

// ==================================================================================
// Native signature

// Signature related functionality is handled via uninterpreted functions. This is sound
// currently because we verify every code path based on signature verification with
// an arbitrary interpretation.

function $1_Signature_$ed25519_validate_pubkey(public_key: Vec int): bool;
function $1_Signature_$ed25519_verify(signature: Vec int, public_key: Vec int, message: Vec int): bool;

// Needed because we do not have extensional equality:
axiom (forall k1, k2: Vec int ::
    {$1_Signature_$ed25519_validate_pubkey(k1), $1_Signature_$ed25519_validate_pubkey(k2)}
    $IsEqual'vec'u8''(k1, k2) ==> $1_Signature_$ed25519_validate_pubkey(k1) == $1_Signature_$ed25519_validate_pubkey(k2));
axiom (forall s1, s2, k1, k2, m1, m2: Vec int ::
    {$1_Signature_$ed25519_verify(s1, k1, m1), $1_Signature_$ed25519_verify(s2, k2, m2)}
    $IsEqual'vec'u8''(s1, s2) && $IsEqual'vec'u8''(k1, k2) && $IsEqual'vec'u8''(m1, m2)
    ==> $1_Signature_$ed25519_verify(s1, k1, m1) == $1_Signature_$ed25519_verify(s2, k2, m2));


procedure {:inline 1} $1_Signature_ed25519_validate_pubkey(public_key: Vec int) returns (res: bool) {
    res := $1_Signature_$ed25519_validate_pubkey(public_key);
}

procedure {:inline 1} $1_Signature_ed25519_verify(
        signature: Vec int, public_key: Vec int, message: Vec int) returns (res: bool) {
    res := $1_Signature_$ed25519_verify(signature, public_key, message);
}


// ==================================================================================
// Native BCS::serialize


// ==================================================================================
// Native Signer::spec_address_of

function {:inline} $1_Signer_spec_address_of(signer: int): int
{
    // A signer is currently identical to an address.
    signer
}

function {:inline} $1_Signer_$borrow_address(signer: int): int
{
    // A signer is currently identical to an address.
    signer
}

// ==================================================================================
// Native Event module



procedure {:inline 1} $InitEventStore() {
}



//==================================
// Begin Translation



// Given Types for Type Parameters


// fun TestAssertWithReferences::simple1 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:8:5+194
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple1$verify(_$t0: int, _$t1: int) returns ()
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t0: int;
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:8:5+194
    assume {:print "$at(2,176,370)"} true;
    assume $IsValid'u64'($t0);

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:8:5+194
    assume $IsValid'u64'($t1);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:8:5+1
    assume {:print "$track_local(0,0,0):", $t0} $t0 == $t0;

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:8:5+1
    assume {:print "$track_local(0,0,1):", $t1} $t1 == $t1;

    // trace_local[y]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:10:9+1
    assume {:print "$at(2,229,230)"} true;
    assume {:print "$track_local(0,0,1):", $t0} $t0 == $t0;

    // $t3 := +($t0, $t0) on_abort goto L2 with $t4 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:11:15+1
    assume {:print "$at(2,250,251)"} true;
    call $t3 := $AddU64($t0, $t0);
    if ($abort_flag) {
        assume {:print "$at(2,250,251)"} true;
        $t4 := $abort_code;
        assume {:print "$track_abort(0,0):", $t4} $t4 == $t4;
        goto L2;
    }

    // trace_local[z]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:11:9+1
    assume {:print "$track_local(0,0,2):", $t3} $t3 == $t3;

    // assert Eq<u64>($t0, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:13:13+14
    assume {:print "$at(2,282,296)"} true;
    assert {:msg "assert_failed(2,282,296): unknown assertion failed"}
      $IsEqual'u64'($t0, $t0);

    // assert Eq<u64>($t3, Mul(2, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:14:13+16
    assume {:print "$at(2,309,325)"} true;
    assert {:msg "assert_failed(2,309,325): unknown assertion failed"}
      $IsEqual'u64'($t3, (2 * $t0));

    // assert Eq<u64>($t3, Mul(2, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:15:13+16
    assume {:print "$at(2,338,354)"} true;
    assert {:msg "assert_failed(2,338,354): unknown assertion failed"}
      $IsEqual'u64'($t3, (2 * $t0));

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:17:5+1
    assume {:print "$at(2,369,370)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:17:5+1
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:17:5+1
L2:

    // abort($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:17:5+1
    $abort_code := $t4;
    $abort_flag := true;
    return;

}

// fun TestAssertWithReferences::simple2 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:21:5+115
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple2$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:21:5+115
    assume {:print "$at(2,463,578)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:21:5+115
    assume $IsValid'u64'($Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:21:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,1,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:21:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,1,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:22:14+2
    assume {:print "$at(2,516,518)"} true;
    $t2 := $Dereference($t0);

    // write_ref($t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:22:9+7
    $t1 := $UpdateMutation($t1, $t2);

    // assert Eq<u64>($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:24:13+14
    assume {:print "$at(2,547,561)"} true;
    assert {:msg "assert_failed(2,547,561): unknown assertion failed"}
      $IsEqual'u64'($Dereference($t0), $Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:25:10+1
    assume {:print "$at(2,571,572)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,1,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:25:10+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,1,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:26:5+1
    assume {:print "$at(2,577,578)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:26:5+1
    $ret0 := $t0;
    $ret1 := $t1;
    return;

}

// fun TestAssertWithReferences::simple3 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:29:5+192
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple3$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:29:5+192
    assume {:print "$at(2,615,807)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:29:5+192
    assume $IsValid'u64'($Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:29:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,2,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:29:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,2,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t2 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:30:14+2
    assume {:print "$at(2,668,670)"} true;
    $t2 := $Dereference($t0);

    // write_ref($t1, $t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:30:9+7
    $t1 := $UpdateMutation($t1, $t2);

    // assert Eq<u64>($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:32:13+14
    assume {:print "$at(2,699,713)"} true;
    assert {:msg "assert_failed(2,699,713): unknown assertion failed"}
      $IsEqual'u64'($Dereference($t0), $Dereference($t1));

    // $t3 := read_ref($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:34:14+2
    assume {:print "$at(2,738,740)"} true;
    $t3 := $Dereference($t1);

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:34:19+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := +($t3, $t4) on_abort goto L2 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:34:17+1
    call $t5 := $AddU64($t3, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,741,742)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,2):", $t6} $t6 == $t6;
        goto L2;
    }

    // write_ref($t1, $t5) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:34:9+11
    $t1 := $UpdateMutation($t1, $t5);

    // assert Eq<num>(Add($t0, 1), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:36:13+18
    assume {:print "$at(2,773,791)"} true;
    assert {:msg "assert_failed(2,773,791): unknown assertion failed"}
      $IsEqual'num'(($Dereference($t0) + 1), $Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:35:9+47
    assume {:print "$at(2,754,801)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,2,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:35:9+47
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,2,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:38:5+1
    assume {:print "$at(2,806,807)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:38:5+1
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:38:5+1
L2:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:38:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestAssertWithReferences::simple4 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:41:5+451
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple4$verify(_$t0: $Mutation (int), _$t1: $Mutation (int)) returns ($ret0: $Mutation (int), $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: int;
    var $t3: int;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t8: int;
    var $t9: int;
    var $t10: int;
    var $t11: int;
    var $t12: int;
    var $t13: int;
    var $t14: int;
    var $t15: int;
    var $t16: int;
    var $t17: int;
    var $t18: int;
    var $t0: $Mutation (int);
    var $t1: $Mutation (int);
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);
    assume l#$Mutation($t1) == $Param(1);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:41:5+451
    assume {:print "$at(2,844,1295)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:41:5+451
    assume $IsValid'u64'($Dereference($t1));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:41:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,3,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:41:5+1
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,3,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t7 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:43:14+2
    assume {:print "$at(2,912,914)"} true;
    $t7 := $Dereference($t0);

    // write_ref($t1, $t7) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:43:9+7
    $t1 := $UpdateMutation($t1, $t7);

    // $t8 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:44:13+2
    assume {:print "$at(2,928,930)"} true;
    $t8 := $Dereference($t0);

    // $t9 := read_ref($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:44:18+2
    $t9 := $Dereference($t1);

    // $t10 := +($t8, $t9) on_abort goto L2 with $t11 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:44:16+1
    call $t10 := $AddU64($t8, $t9);
    if ($abort_flag) {
        assume {:print "$at(2,931,932)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,3):", $t11} $t11 == $t11;
        goto L2;
    }

    // trace_local[z]($t10) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:44:9+1
    assume {:print "$track_local(0,3,6):", $t10} $t10 == $t10;

    // $t12 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:45:18+2
    assume {:print "$at(2,954,956)"} true;
    $t12 := $Dereference($t0);

    // trace_local[vx]($t12) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:45:13+2
    assume {:print "$track_local(0,3,4):", $t12} $t12 == $t12;

    // $t13 := read_ref($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:46:18+2
    assume {:print "$at(2,975,977)"} true;
    $t13 := $Dereference($t1);

    // trace_local[vy]($t13) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:46:13+2
    assume {:print "$track_local(0,3,5):", $t13} $t13 == $t13;

    // $t14 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:47:18+9
    assume {:print "$at(2,996,1005)"} true;
    $t14 := $Dereference($t0);

    // trace_local[fx]($t14) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:47:13+2
    assume {:print "$track_local(0,3,2):", $t14} $t14 == $t14;

    // $t15 := read_ref($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:48:18+9
    assume {:print "$at(2,1024,1033)"} true;
    $t15 := $Dereference($t1);

    // trace_local[fy]($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:48:13+2
    assume {:print "$track_local(0,3,3):", $t15} $t15 == $t15;

    // assert Eq<u64>($t14, $t15) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:50:13+16
    assume {:print "$at(2,1062,1078)"} true;
    assert {:msg "assert_failed(2,1062,1078): unknown assertion failed"}
      $IsEqual'u64'($t14, $t15);

    // assert Eq<u64>($t12, $t13) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:51:13+16
    assume {:print "$at(2,1091,1107)"} true;
    assert {:msg "assert_failed(2,1091,1107): unknown assertion failed"}
      $IsEqual'u64'($t12, $t13);

    // assert Eq<u64>($t10, Mul(2, $t0)) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:52:13+16
    assume {:print "$at(2,1120,1136)"} true;
    assert {:msg "assert_failed(2,1120,1136): unknown assertion failed"}
      $IsEqual'u64'($t10, (2 * $Dereference($t0)));

    // destroy($t15) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:54:9+1
    assume {:print "$at(2,1156,1157)"} true;

    // $t16 := read_ref($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:55:14+2
    assume {:print "$at(2,1191,1193)"} true;
    $t16 := $Dereference($t1);

    // $t17 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:55:19+1
    $t17 := 1;
    assume $IsValid'u64'($t17);

    // $t18 := +($t16, $t17) on_abort goto L2 with $t11 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:55:17+1
    call $t18 := $AddU64($t16, $t17);
    if ($abort_flag) {
        assume {:print "$at(2,1194,1195)"} true;
        $t11 := $abort_code;
        assume {:print "$track_abort(0,3):", $t11} $t11 == $t11;
        goto L2;
    }

    // write_ref($t1, $t18) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:55:9+11
    $t1 := $UpdateMutation($t1, $t18);

    // assert Eq<num>(Add($t0, 1), $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:57:13+18
    assume {:print "$at(2,1226,1244)"} true;
    assert {:msg "assert_failed(2,1226,1244): unknown assertion failed"}
      $IsEqual'num'(($Dereference($t0) + 1), $Dereference($t1));

    // assert Eq<num>(Add($t10, 1), Add($t0, $t1)) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:58:13+22
    assume {:print "$at(2,1257,1279)"} true;
    assert {:msg "assert_failed(2,1257,1279): unknown assertion failed"}
      $IsEqual'num'(($t10 + 1), ($Dereference($t0) + $Dereference($t1)));

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:56:9+82
    assume {:print "$at(2,1207,1289)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,3,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:56:9+82
    $temp_0'u64' := $Dereference($t1);
    assume {:print "$track_local(0,3,1):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:60:5+1
    assume {:print "$at(2,1294,1295)"} true;
L1:

    // return () at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:60:5+1
    $ret0 := $t0;
    $ret1 := $t1;
    return;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:60:5+1
L2:

    // abort($t11) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:60:5+1
    $abort_code := $t11;
    $abort_flag := true;
    return;

}

// fun TestAssertWithReferences::simple5 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:63:5+262
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple5$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: bool;
    var $t5: int;
    var $t6: int;
    var $t7: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:79:17+6
    assume {:print "$at(2,1630,1636)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[n]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:63:5+1
    assume {:print "$at(2,1332,1333)"} true;
    assume {:print "$track_local(0,4,0):", $t0} $t0 == $t0;

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:64:17+1
    assume {:print "$at(2,1375,1376)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // trace_local[x]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:64:13+1
    assume {:print "$track_local(0,4,1):", $t2} $t2 == $t2;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:67:13+51
    assume {:print "$at(2,1406,1457)"} true;
L3:

    // assert Le($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    assume {:print "$at(2,1429,1443)"} true;
    assert {:msg "assert_failed(2,1429,1443): base case of the loop invariant does not hold"}
      ($t2 <= $t0);

    // havoc[val]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    havoc $t4;
    assume $IsValid'bool'($t4);

    // havoc[val]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    havoc $t5;
    assume $IsValid'u64'($t5);

    // havoc[val]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    havoc $t6;
    assume $IsValid'u64'($t6);

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    assume !$abort_flag;

    // assume Le($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    assume ($t2 <= $t0);

    // $t3 := <($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:70:21+1
    assume {:print "$at(2,1479,1480)"} true;
    call $t3 := $Lt($t2, $t0);

    // $t4 := !($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:70:17+1
    call $t4 := $Not($t3);

    // if ($t4) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:70:13+19
    if ($t4) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:70:13+19
L1:

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:71:17+1
    assume {:print "$at(2,1508,1509)"} true;
L2:

    // $t5 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:71:21+1
    $t5 := 1;
    assume $IsValid'u64'($t5);

    // $t6 := +($t2, $t5) on_abort goto L6 with $t7 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:71:19+1
    call $t6 := $AddU64($t2, $t5);
    if ($abort_flag) {
        assume {:print "$at(2,1510,1511)"} true;
        $t7 := $abort_code;
        assume {:print "$track_abort(0,4):", $t7} $t7 == $t7;
        goto L6;
    }

    // trace_local[x]($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:71:13+1
    assume {:print "$track_local(0,4,1):", $t6} $t6 == $t6;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:71:22+1
    goto L4;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:73:9+43
    assume {:print "$at(2,1534,1577)"} true;
L0:

    // assert Eq<u64>($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:74:13+14
    assume {:print "$at(2,1553,1567)"} true;
    assert {:msg "assert_failed(2,1553,1567): unknown assertion failed"}
      $IsEqual'u64'($t2, $t0);

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:76:9+1
    assume {:print "$at(2,1587,1588)"} true;
    assume {:print "$track_return(0,4,0):", $t2} $t2 == $t2;

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:76:9+1
    goto L5;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:73:9+43
    // Loop invariant checking block for the loop started with header: L3
    assume {:print "$at(2,1534,1577)"} true;
L4:

    // assert Le($t6, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    assume {:print "$at(2,1429,1443)"} true;
    assert {:msg "assert_failed(2,1429,1443): induction case of the loop invariant does not hold"}
      ($t6 <= $t0);

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:68:17+14
    assume false;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:77:5+1
    assume {:print "$at(2,1593,1594)"} true;
L5:

    // assert Eq<u64>($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:79:9+20
    assume {:print "$at(2,1622,1642)"} true;
    assert {:msg "assert_failed(2,1622,1642): post-condition does not hold"}
      $IsEqual'u64'($t2, $t0);

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:79:9+20
    $ret0 := $t2;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:77:5+1
    assume {:print "$at(2,1593,1594)"} true;
L6:

    // abort($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:77:5+1
    $abort_code := $t7;
    $abort_flag := true;
    return;

}

// fun TestAssertWithReferences::simple6 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:83:5+264
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple6$verify(_$t0: int) returns ($ret0: int)
{
    // declare local variables
    var $t1: int;
    var $t2: int;
    var $t3: bool;
    var $t4: int;
    var $t5: int;
    var $t6: int;
    var $t0: int;
    var $temp_0'u64': int;
    $t0 := _$t0;

    // verification entrypoint assumptions
    call $InitVerification();

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:100:17+6
    assume {:print "$at(2,1985,1991)"} true;
    assume $IsValid'u64'($t0);

    // trace_local[n]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:83:5+1
    assume {:print "$at(2,1685,1686)"} true;
    assume {:print "$track_local(0,5,0):", $t0} $t0 == $t0;

    // $t2 := 0 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:84:17+1
    assume {:print "$at(2,1728,1729)"} true;
    $t2 := 0;
    assume $IsValid'u64'($t2);

    // trace_local[x]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:84:13+1
    assume {:print "$track_local(0,5,1):", $t2} $t2 == $t2;

    // label L3 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:87:13+51
    assume {:print "$at(2,1761,1812)"} true;
L3:

    // assert Le($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    assume {:print "$at(2,1784,1798)"} true;
    assert {:msg "assert_failed(2,1784,1798): base case of the loop invariant does not hold"}
      ($t2 <= $t0);

    // havoc[val]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    havoc $t2;
    assume $IsValid'u64'($t2);

    // havoc[val]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    havoc $t3;
    assume $IsValid'bool'($t3);

    // havoc[val]($t4) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    havoc $t4;
    assume $IsValid'u64'($t4);

    // havoc[val]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    havoc $t5;
    assume $IsValid'u64'($t5);

    // assume Not(AbortFlag()) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    assume !$abort_flag;

    // assume Le($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    assume ($t2 <= $t0);

    // $t3 := <($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:90:16+1
    assume {:print "$at(2,1829,1830)"} true;
    call $t3 := $Lt($t2, $t0);

    // if ($t3) goto L0 else goto L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:86:9+139
    assume {:print "$at(2,1740,1879)"} true;
    if ($t3) { goto L0; } else { goto L1; }

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:86:9+139
L1:

    // goto L2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:86:9+139
    goto L2;

    // label L0 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:92:17+1
    assume {:print "$at(2,1863,1864)"} true;
L0:

    // $t4 := 1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:92:21+1
    $t4 := 1;
    assume $IsValid'u64'($t4);

    // $t5 := +($t2, $t4) on_abort goto L6 with $t6 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:92:19+1
    call $t5 := $AddU64($t2, $t4);
    if ($abort_flag) {
        assume {:print "$at(2,1865,1866)"} true;
        $t6 := $abort_code;
        assume {:print "$track_abort(0,5):", $t6} $t6 == $t6;
        goto L6;
    }

    // trace_local[x]($t5) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:92:13+1
    assume {:print "$track_local(0,5,1):", $t5} $t5 == $t5;

    // goto L4 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:92:22+1
    goto L4;

    // label L2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:94:9+43
    assume {:print "$at(2,1889,1932)"} true;
L2:

    // assert Eq<u64>($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:95:13+14
    assume {:print "$at(2,1908,1922)"} true;
    assert {:msg "assert_failed(2,1908,1922): unknown assertion failed"}
      $IsEqual'u64'($t2, $t0);

    // trace_return[0]($t2) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:97:9+1
    assume {:print "$at(2,1942,1943)"} true;
    assume {:print "$track_return(0,5,0):", $t2} $t2 == $t2;

    // goto L5 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:97:9+1
    goto L5;

    // label L4 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:94:9+43
    // Loop invariant checking block for the loop started with header: L3
    assume {:print "$at(2,1889,1932)"} true;
L4:

    // assert Le($t5, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    assume {:print "$at(2,1784,1798)"} true;
    assert {:msg "assert_failed(2,1784,1798): induction case of the loop invariant does not hold"}
      ($t5 <= $t0);

    // stop() at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:88:17+14
    assume false;
    return;

    // label L5 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:98:5+1
    assume {:print "$at(2,1948,1949)"} true;
L5:

    // assert Eq<u64>($t2, $t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:100:9+20
    assume {:print "$at(2,1977,1997)"} true;
    assert {:msg "assert_failed(2,1977,1997): post-condition does not hold"}
      $IsEqual'u64'($t2, $t0);

    // return $t2 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:100:9+20
    $ret0 := $t2;
    return;

    // label L6 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:98:5+1
    assume {:print "$at(2,1948,1949)"} true;
L6:

    // abort($t6) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:98:5+1
    $abort_code := $t6;
    $abort_flag := true;
    return;

}

// fun TestAssertWithReferences::simple7 [verification] at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:104:5+396
procedure {:timeLimit 40} $42_TestAssertWithReferences_simple7$verify(_$t0: $Mutation (int), _$t1: int) returns ($ret0: int, $ret1: $Mutation (int))
{
    // declare local variables
    var $t2: $Mutation (int);
    var $t3: int;
    var $t4: $Mutation (int);
    var $t5: int;
    var $t6: int;
    var $t7: $Mutation (int);
    var $t8: int;
    var $t9: int;
    var $t0: $Mutation (int);
    var $t1: int;
    var $temp_0'u64': int;
    $t0 := _$t0;
    $t1 := _$t1;
    assume IsEmptyVec(p#$Mutation($t2));
    assume IsEmptyVec(p#$Mutation($t4));
    assume IsEmptyVec(p#$Mutation($t7));

    // verification entrypoint assumptions
    call $InitVerification();
    assume l#$Mutation($t0) == $Param(0);

    // bytecode translation starts here
    // assume WellFormed($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:121:27+6
    assume {:print "$at(2,2482,2488)"} true;
    assume $IsValid'u64'($Dereference($t0));

    // assume WellFormed($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:121:27+6
    assume $IsValid'u64'($t1);

    // $t5 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:104:5+1
    assume {:print "$at(2,2040,2041)"} true;
    $t5 := $Dereference($t0);

    // $t6 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:104:5+1
    $t6 := $Dereference($t0);

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:104:5+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // trace_local[y]($t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:104:5+1
    assume {:print "$track_local(0,6,1):", $t1} $t1 == $t1;

    // trace_local[a]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:105:13+1
    assume {:print "$at(2,2092,2093)"} true;
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,6,2):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t3 := $t1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:106:13+1
    assume {:print "$at(2,2111,2112)"} true;
    $t3 := $t1;

    // trace_local[b]($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:106:13+1
    assume {:print "$track_local(0,6,3):", $t3} $t3 == $t3;

    // $t7 := borrow_local($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:107:17+6
    assume {:print "$at(2,2134,2140)"} true;
    $t7 := $Mutation($Local(3), EmptyVec(), $t3);

    // trace_local[c]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:107:13+1
    $temp_0'u64' := $Dereference($t7);
    assume {:print "$track_local(0,6,4):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // $t8 := read_ref($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:108:14+2
    assume {:print "$at(2,2155,2157)"} true;
    $t8 := $Dereference($t0);

    // write_ref($t7, $t8) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:108:9+7
    $t7 := $UpdateMutation($t7, $t8);

    // write_ref($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:109:9+6
    assume {:print "$at(2,2167,2173)"} true;
    $t0 := $UpdateMutation($t0, $t1);

    // assert Eq<u64>($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:111:13+14
    assume {:print "$at(2,2202,2216)"} true;
    assert {:msg "assert_failed(2,2202,2216): unknown assertion failed"}
      $IsEqual'u64'($Dereference($t0), $t1);

    // assert Eq<u64>($t0, $t1) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:112:13+14
    assume {:print "$at(2,2229,2243)"} true;
    assert {:msg "assert_failed(2,2229,2243): unknown assertion failed"}
      $IsEqual'u64'($Dereference($t0), $t1);

    // assert Eq<u64>($t7, $t6) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:113:13+19
    assume {:print "$at(2,2256,2275)"} true;
    assert {:msg "assert_failed(2,2256,2275): unknown assertion failed"}
      $IsEqual'u64'($Dereference($t7), $t6);

    // write_back[LocalRoot($t3)@]($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:117:13+1
    assume {:print "$at(2,2414,2415)"} true;
    $t3 := $Dereference($t7);

    // destroy($t7) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:117:13+1

    // $t9 := copy($t3) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:118:9+1
    assume {:print "$at(2,2429,2430)"} true;
    $t9 := $t3;

    // trace_return[0]($t9) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:118:9+1
    assume {:print "$track_return(0,6,0):", $t9} $t9 == $t9;

    // trace_local[x]($t0) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:118:9+1
    $temp_0'u64' := $Dereference($t0);
    assume {:print "$track_local(0,6,0):", $temp_0'u64'} $temp_0'u64' == $temp_0'u64';

    // label L1 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:119:5+1
    assume {:print "$at(2,2435,2436)"} true;
L1:

    // assert And(Eq<u64>($t0, $t1), Eq<u64>($t9, $t5)) at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:121:9+35
    assume {:print "$at(2,2464,2499)"} true;
    assert {:msg "assert_failed(2,2464,2499): post-condition does not hold"}
      ($IsEqual'u64'($Dereference($t0), $t1) && $IsEqual'u64'($t9, $t5));

    // return $t9 at /home/ying/diem/language/move-prover/tests/sources/functional/specs_in_fun_ref.move:121:9+35
    $ret0 := $t9;
    $ret1 := $t0;
    return;

}

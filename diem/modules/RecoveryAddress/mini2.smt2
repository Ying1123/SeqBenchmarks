(declare-datatypes ((f 0)) ((($1_ (c Int)))))
(declare-datatypes (($ 0)) (((|1| (|#| (Seq f))))))
(declare-datatypes ((@ 0)) ((($1_ (t $)))))
(declare-sort T 0)
(declare-datatypes ((M 0)) (((M (c T)))))
(declare-fun $ (Int) Bool)
(declare-fun _$ () Int)
(declare-fun S (T Int) @)
(declare-fun $1 () M)
(assert (exists ((a Int)) (= a (c (seq.nth (|#| (t (S (c $1) 0))) 0)))))
(check-sat)

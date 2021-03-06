(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-sort Element 0)
(declare-fun a_193 () (Seq Element))
(declare-fun a_195 () (Seq Element))
(declare-fun a_197 () (Seq Element))
(declare-fun a_198 () (Seq Element))
(declare-fun a_200 () (Seq Element))
(declare-fun a_202 () (Seq Element))
(declare-fun a_204 () (Seq Element))
(declare-fun a_205 () (Seq Element))
(declare-fun a_207 () (Seq Element))
(declare-fun a_209 () (Seq Element))
(declare-fun a_210 () (Seq Element))
(declare-fun a_211 () (Seq Element))
(declare-fun a_213 () (Seq Element))
(declare-fun a_214 () (Seq Element))
(declare-fun a_216 () (Seq Element))
(declare-fun a_218 () (Seq Element))
(declare-fun e_192 () Element)
(declare-fun e_194 () Element)
(declare-fun e_196 () Element)
(declare-fun e_199 () Element)
(declare-fun e_201 () Element)
(declare-fun e_203 () Element)
(declare-fun e_206 () Element)
(declare-fun e_208 () Element)
(declare-fun e_212 () Element)
(declare-fun e_215 () Element)
(declare-fun e_217 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(assert (= a_193 (seq.update a1 i0 (seq.unit e_192))))
(assert (= a_195 (seq.update a_193 i3 (seq.unit e_194))))
(assert (= a_197 (seq.update a_195 i4 (seq.unit e_196))))
(assert (= a_198 (seq.update a_197 i4 (seq.unit e_196))))
(assert (= a_200 (seq.update a_198 i2 (seq.unit e_199))))
(assert (= a_202 (seq.update a_200 i1 (seq.unit e_201))))
(assert (= a_204 (seq.update a_202 i0 (seq.unit e_203))))
(assert (= a_205 (seq.update a_204 i0 (seq.unit e_203))))
(assert (= a_207 (seq.update a_205 i2 (seq.unit e_206))))
(assert (= a_209 (seq.update a_207 i1 (seq.unit e_208))))
(assert (= a_210 (seq.update a_198 i1 (seq.unit e_201))))
(assert (= a_211 (seq.update a_210 i2 (seq.unit e_199))))
(assert (= a_213 (seq.update a_211 i0 (seq.unit e_212))))
(assert (= a_214 (seq.update a_213 i0 (seq.unit e_212))))
(assert (= a_216 (seq.update a_214 i2 (seq.unit e_215))))
(assert (= a_218 (seq.update a_216 i1 (seq.unit e_217))))
(assert (= e_192 (seq.nth a1 i3)))
(assert (= e_194 (seq.nth a1 i0)))
(assert (= e_196 (seq.nth a_195 i4)))
(assert (= e_199 (seq.nth a_198 i1)))
(assert (= e_201 (seq.nth a_198 i2)))
(assert (= e_203 (seq.nth a_202 i0)))
(assert (= e_206 (seq.nth a_205 i1)))
(assert (= e_208 (seq.nth a_205 i2)))
(assert (= e_212 (seq.nth a_211 i0)))
(assert (= e_215 (seq.nth a_214 i1)))
(assert (= e_217 (seq.nth a_214 i2)))
(assert (not (= a_209 a_218)))
(check-sat)
(exit)

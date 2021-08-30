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
(declare-fun a_192 () (Seq Element))
(declare-fun a_193 () (Seq Element))
(declare-fun a_195 () (Seq Element))
(declare-fun a_196 () (Seq Element))
(declare-fun a_198 () (Seq Element))
(declare-fun a_199 () (Seq Element))
(declare-fun a_201 () (Seq Element))
(declare-fun a_203 () (Seq Element))
(declare-fun a_205 () (Seq Element))
(declare-fun a_207 () (Seq Element))
(declare-fun a_209 () (Seq Element))
(declare-fun a_211 () (Seq Element))
(declare-fun a_213 () (Seq Element))
(declare-fun a_215 () (Seq Element))
(declare-fun a_216 () (Seq Element))
(declare-fun a_217 () (Seq Element))
(declare-fun a_219 () (Seq Element))
(declare-fun a_221 () (Seq Element))
(declare-fun a_223 () (Seq Element))
(declare-fun a_225 () (Seq Element))
(declare-fun a_227 () (Seq Element))
(declare-fun a_229 () (Seq Element))
(declare-fun e_191 () Element)
(declare-fun e_194 () Element)
(declare-fun e_197 () Element)
(declare-fun e_200 () Element)
(declare-fun e_202 () Element)
(declare-fun e_204 () Element)
(declare-fun e_206 () Element)
(declare-fun e_208 () Element)
(declare-fun e_210 () Element)
(declare-fun e_212 () Element)
(declare-fun e_214 () Element)
(declare-fun e_218 () Element)
(declare-fun e_220 () Element)
(declare-fun e_222 () Element)
(declare-fun e_224 () Element)
(declare-fun e_226 () Element)
(declare-fun e_228 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(assert (= a_192 (seq.update a1 i2 (seq.unit e_191))))
(assert (= a_193 (seq.update a_192 i2 (seq.unit e_191))))
(assert (= a_195 (seq.update a_193 i0 (seq.unit e_194))))
(assert (= a_196 (seq.update a_195 i0 (seq.unit e_194))))
(assert (= a_198 (seq.update a_196 i6 (seq.unit e_197))))
(assert (= a_199 (seq.update a_198 i6 (seq.unit e_197))))
(assert (= a_201 (seq.update a_199 i5 (seq.unit e_200))))
(assert (= a_203 (seq.update a_201 i3 (seq.unit e_202))))
(assert (= a_205 (seq.update a_203 i5 (seq.unit e_204))))
(assert (= a_207 (seq.update a_205 i0 (seq.unit e_206))))
(assert (= a_209 (seq.update a_207 i1 (seq.unit e_208))))
(assert (= a_211 (seq.update a_209 i3 (seq.unit e_210))))
(assert (= a_213 (seq.update a_211 i6 (seq.unit e_212))))
(assert (= a_215 (seq.update a_213 i4 (seq.unit e_214))))
(assert (= a_216 (seq.update a_199 i3 (seq.unit e_202))))
(assert (= a_217 (seq.update a_216 i5 (seq.unit e_200))))
(assert (= a_219 (seq.update a_217 i0 (seq.unit e_218))))
(assert (= a_221 (seq.update a_219 i5 (seq.unit e_220))))
(assert (= a_223 (seq.update a_221 i3 (seq.unit e_222))))
(assert (= a_225 (seq.update a_223 i1 (seq.unit e_224))))
(assert (= a_227 (seq.update a_225 i4 (seq.unit e_226))))
(assert (= a_229 (seq.update a_227 i6 (seq.unit e_228))))
(assert (= e_191 (seq.nth a1 i2)))
(assert (= e_194 (seq.nth a_193 i0)))
(assert (= e_197 (seq.nth a_196 i6)))
(assert (= e_200 (seq.nth a_199 i3)))
(assert (= e_202 (seq.nth a_199 i5)))
(assert (= e_204 (seq.nth a_203 i0)))
(assert (= e_206 (seq.nth a_203 i5)))
(assert (= e_208 (seq.nth a_207 i3)))
(assert (= e_210 (seq.nth a_207 i1)))
(assert (= e_212 (seq.nth a_211 i4)))
(assert (= e_214 (seq.nth a_211 i6)))
(assert (= e_218 (seq.nth a_217 i5)))
(assert (= e_220 (seq.nth a_217 i0)))
(assert (= e_222 (seq.nth a_221 i1)))
(assert (= e_224 (seq.nth a_221 i3)))
(assert (= e_226 (seq.nth a_225 i6)))
(assert (= e_228 (seq.nth a_225 i4)))
(assert (not (= a_215 a_229)))
(check-sat)
(exit)

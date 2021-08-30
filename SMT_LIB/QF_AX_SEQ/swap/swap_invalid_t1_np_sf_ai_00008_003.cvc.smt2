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
(set-info :status sat)

(declare-sort Element 0)
(declare-fun a_670 () (Seq Element))
(declare-fun a_672 () (Seq Element))
(declare-fun a_674 () (Seq Element))
(declare-fun a_676 () (Seq Element))
(declare-fun a_678 () (Seq Element))
(declare-fun a_680 () (Seq Element))
(declare-fun a_682 () (Seq Element))
(declare-fun a_683 () (Seq Element))
(declare-fun a_685 () (Seq Element))
(declare-fun a_687 () (Seq Element))
(declare-fun a_689 () (Seq Element))
(declare-fun a_691 () (Seq Element))
(declare-fun a_693 () (Seq Element))
(declare-fun a_695 () (Seq Element))
(declare-fun a_697 () (Seq Element))
(declare-fun a_699 () (Seq Element))
(declare-fun a_700 () (Seq Element))
(declare-fun a_702 () (Seq Element))
(declare-fun e_669 () Element)
(declare-fun e_671 () Element)
(declare-fun e_673 () Element)
(declare-fun e_675 () Element)
(declare-fun e_677 () Element)
(declare-fun e_679 () Element)
(declare-fun e_681 () Element)
(declare-fun e_684 () Element)
(declare-fun e_686 () Element)
(declare-fun e_688 () Element)
(declare-fun e_690 () Element)
(declare-fun e_692 () Element)
(declare-fun e_694 () Element)
(declare-fun e_696 () Element)
(declare-fun e_698 () Element)
(declare-fun e_701 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(assert (= a_670 (seq.update a1 i7 (seq.unit e_669))))
(assert (= a_672 (seq.update a_670 i2 (seq.unit e_671))))
(assert (= a_674 (seq.update a_672 i2 (seq.unit e_673))))
(assert (= a_676 (seq.update a_674 i3 (seq.unit e_675))))
(assert (= a_678 (seq.update a_676 i3 (seq.unit e_677))))
(assert (= a_680 (seq.update a_678 i1 (seq.unit e_679))))
(assert (= a_682 (seq.update a_680 i6 (seq.unit e_681))))
(assert (= a_683 (seq.update a_682 i6 (seq.unit e_681))))
(assert (= a_685 (seq.update a_683 i6 (seq.unit e_684))))
(assert (= a_687 (seq.update a_685 i7 (seq.unit e_686))))
(assert (= a_689 (seq.update a_687 i2 (seq.unit e_688))))
(assert (= a_691 (seq.update a_689 i3 (seq.unit e_690))))
(assert (= a_693 (seq.update a_691 i4 (seq.unit e_692))))
(assert (= a_695 (seq.update a_693 i0 (seq.unit e_694))))
(assert (= a_697 (seq.update a_695 i5 (seq.unit e_696))))
(assert (= a_699 (seq.update a_697 i7 (seq.unit e_698))))
(assert (= a_700 (seq.update a_695 i6 (seq.unit e_696))))
(assert (= a_702 (seq.update a_700 i7 (seq.unit e_701))))
(assert (= e_669 (seq.nth a1 i2)))
(assert (= e_671 (seq.nth a1 i7)))
(assert (= e_673 (seq.nth a_672 i3)))
(assert (= e_675 (seq.nth a_672 i2)))
(assert (= e_677 (seq.nth a_676 i1)))
(assert (= e_679 (seq.nth a_676 i3)))
(assert (= e_681 (seq.nth a_680 i6)))
(assert (= e_684 (seq.nth a_683 i7)))
(assert (= e_686 (seq.nth a_683 i6)))
(assert (= e_688 (seq.nth a_687 i3)))
(assert (= e_690 (seq.nth a_687 i2)))
(assert (= e_692 (seq.nth a_691 i0)))
(assert (= e_694 (seq.nth a_691 i4)))
(assert (= e_696 (seq.nth a_695 i7)))
(assert (= e_698 (seq.nth a_695 i5)))
(assert (= e_701 (seq.nth a_695 i6)))
(assert (not (= a_699 a_702)))
(check-sat)
(exit)
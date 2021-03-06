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
(declare-fun a_567 () (Seq Element))
(declare-fun a_569 () (Seq Element))
(declare-fun a_571 () (Seq Element))
(declare-fun a_573 () (Seq Element))
(declare-fun a_575 () (Seq Element))
(declare-fun a_577 () (Seq Element))
(declare-fun a_579 () (Seq Element))
(declare-fun a_581 () (Seq Element))
(declare-fun a_583 () (Seq Element))
(declare-fun a_585 () (Seq Element))
(declare-fun a_587 () (Seq Element))
(declare-fun a_589 () (Seq Element))
(declare-fun a_591 () (Seq Element))
(declare-fun a_593 () (Seq Element))
(declare-fun a_595 () (Seq Element))
(declare-fun a_597 () (Seq Element))
(declare-fun a_599 () (Seq Element))
(declare-fun a_601 () (Seq Element))
(declare-fun a_603 () (Seq Element))
(declare-fun a_605 () (Seq Element))
(declare-fun a_606 () (Seq Element))
(declare-fun a_607 () (Seq Element))
(declare-fun a_609 () (Seq Element))
(declare-fun a_611 () (Seq Element))
(declare-fun a_613 () (Seq Element))
(declare-fun a_615 () (Seq Element))
(declare-fun a_617 () (Seq Element))
(declare-fun a_619 () (Seq Element))
(declare-fun a_621 () (Seq Element))
(declare-fun a_623 () (Seq Element))
(declare-fun a_625 () (Seq Element))
(declare-fun a_627 () (Seq Element))
(declare-fun a_629 () (Seq Element))
(declare-fun a_631 () (Seq Element))
(declare-fun e_566 () Element)
(declare-fun e_568 () Element)
(declare-fun e_570 () Element)
(declare-fun e_572 () Element)
(declare-fun e_574 () Element)
(declare-fun e_576 () Element)
(declare-fun e_578 () Element)
(declare-fun e_580 () Element)
(declare-fun e_582 () Element)
(declare-fun e_584 () Element)
(declare-fun e_586 () Element)
(declare-fun e_588 () Element)
(declare-fun e_590 () Element)
(declare-fun e_592 () Element)
(declare-fun e_594 () Element)
(declare-fun e_596 () Element)
(declare-fun e_598 () Element)
(declare-fun e_600 () Element)
(declare-fun e_602 () Element)
(declare-fun e_604 () Element)
(declare-fun e_608 () Element)
(declare-fun e_610 () Element)
(declare-fun e_612 () Element)
(declare-fun e_614 () Element)
(declare-fun e_616 () Element)
(declare-fun e_618 () Element)
(declare-fun e_620 () Element)
(declare-fun e_622 () Element)
(declare-fun e_624 () Element)
(declare-fun e_626 () Element)
(declare-fun e_628 () Element)
(declare-fun e_630 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_567 (seq.update a1 i4 (seq.unit e_566))))
(assert (= a_569 (seq.update a_567 i3 (seq.unit e_568))))
(assert (= a_571 (seq.update a_569 i6 (seq.unit e_570))))
(assert (= a_573 (seq.update a_571 i7 (seq.unit e_572))))
(assert (= a_575 (seq.update a_573 i5 (seq.unit e_574))))
(assert (= a_577 (seq.update a_575 i0 (seq.unit e_576))))
(assert (= a_579 (seq.update a_577 i4 (seq.unit e_578))))
(assert (= a_581 (seq.update a_579 i7 (seq.unit e_580))))
(assert (= a_583 (seq.update a_581 i3 (seq.unit e_582))))
(assert (= a_585 (seq.update a_583 i6 (seq.unit e_584))))
(assert (= a_587 (seq.update a_585 i8 (seq.unit e_586))))
(assert (= a_589 (seq.update a_587 i2 (seq.unit e_588))))
(assert (= a_591 (seq.update a_589 i7 (seq.unit e_590))))
(assert (= a_593 (seq.update a_591 i2 (seq.unit e_592))))
(assert (= a_595 (seq.update a_593 i6 (seq.unit e_594))))
(assert (= a_597 (seq.update a_595 i4 (seq.unit e_596))))
(assert (= a_599 (seq.update a_597 i2 (seq.unit e_598))))
(assert (= a_601 (seq.update a_599 i9 (seq.unit e_600))))
(assert (= a_603 (seq.update a_601 i1 (seq.unit e_602))))
(assert (= a_605 (seq.update a_603 i2 (seq.unit e_604))))
(assert (= a_606 (seq.update a_577 i7 (seq.unit e_580))))
(assert (= a_607 (seq.update a_606 i4 (seq.unit e_578))))
(assert (= a_609 (seq.update a_607 i3 (seq.unit e_608))))
(assert (= a_611 (seq.update a_609 i6 (seq.unit e_610))))
(assert (= a_613 (seq.update a_611 i8 (seq.unit e_612))))
(assert (= a_615 (seq.update a_613 i2 (seq.unit e_614))))
(assert (= a_617 (seq.update a_615 i7 (seq.unit e_616))))
(assert (= a_619 (seq.update a_617 i2 (seq.unit e_618))))
(assert (= a_621 (seq.update a_619 i6 (seq.unit e_620))))
(assert (= a_623 (seq.update a_621 i4 (seq.unit e_622))))
(assert (= a_625 (seq.update a_623 i9 (seq.unit e_624))))
(assert (= a_627 (seq.update a_625 i2 (seq.unit e_626))))
(assert (= a_629 (seq.update a_627 i1 (seq.unit e_628))))
(assert (= a_631 (seq.update a_629 i3 (seq.unit e_630))))
(assert (= e_566 (seq.nth a1 i3)))
(assert (= e_568 (seq.nth a1 i4)))
(assert (= e_570 (seq.nth a_569 i7)))
(assert (= e_572 (seq.nth a_569 i6)))
(assert (= e_574 (seq.nth a_573 i0)))
(assert (= e_576 (seq.nth a_573 i5)))
(assert (= e_578 (seq.nth a_577 i7)))
(assert (= e_580 (seq.nth a_577 i4)))
(assert (= e_582 (seq.nth a_581 i6)))
(assert (= e_584 (seq.nth a_581 i3)))
(assert (= e_586 (seq.nth a_585 i2)))
(assert (= e_588 (seq.nth a_585 i8)))
(assert (= e_590 (seq.nth a_589 i2)))
(assert (= e_592 (seq.nth a_589 i7)))
(assert (= e_594 (seq.nth a_593 i4)))
(assert (= e_596 (seq.nth a_593 i6)))
(assert (= e_598 (seq.nth a_597 i9)))
(assert (= e_600 (seq.nth a_597 i2)))
(assert (= e_602 (seq.nth a_601 i2)))
(assert (= e_604 (seq.nth a_601 i1)))
(assert (= e_608 (seq.nth a_607 i6)))
(assert (= e_610 (seq.nth a_607 i3)))
(assert (= e_612 (seq.nth a_611 i2)))
(assert (= e_614 (seq.nth a_611 i8)))
(assert (= e_616 (seq.nth a_615 i2)))
(assert (= e_618 (seq.nth a_615 i7)))
(assert (= e_620 (seq.nth a_619 i4)))
(assert (= e_622 (seq.nth a_619 i6)))
(assert (= e_624 (seq.nth a_623 i2)))
(assert (= e_626 (seq.nth a_623 i9)))
(assert (= e_628 (seq.nth a_627 i3)))
(assert (= e_630 (seq.nth a_627 i1)))
(assert (not (= a_605 a_631)))
(check-sat)
(exit)

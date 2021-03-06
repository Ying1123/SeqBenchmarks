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
(declare-fun a_566 () (Seq Element))
(declare-fun a_568 () (Seq Element))
(declare-fun a_570 () (Seq Element))
(declare-fun a_572 () (Seq Element))
(declare-fun a_574 () (Seq Element))
(declare-fun a_576 () (Seq Element))
(declare-fun a_578 () (Seq Element))
(declare-fun a_580 () (Seq Element))
(declare-fun a_582 () (Seq Element))
(declare-fun a_584 () (Seq Element))
(declare-fun a_586 () (Seq Element))
(declare-fun a_588 () (Seq Element))
(declare-fun a_590 () (Seq Element))
(declare-fun a_592 () (Seq Element))
(declare-fun a_594 () (Seq Element))
(declare-fun a_596 () (Seq Element))
(declare-fun a_598 () (Seq Element))
(declare-fun a_600 () (Seq Element))
(declare-fun a_602 () (Seq Element))
(declare-fun a_604 () (Seq Element))
(declare-fun a_605 () (Seq Element))
(declare-fun a_606 () (Seq Element))
(declare-fun a_608 () (Seq Element))
(declare-fun a_610 () (Seq Element))
(declare-fun a_612 () (Seq Element))
(declare-fun a_614 () (Seq Element))
(declare-fun a_616 () (Seq Element))
(declare-fun a_618 () (Seq Element))
(declare-fun a_620 () (Seq Element))
(declare-fun a_622 () (Seq Element))
(declare-fun a_624 () (Seq Element))
(declare-fun a_626 () (Seq Element))
(declare-fun a_628 () (Seq Element))
(declare-fun a_630 () (Seq Element))
(declare-fun e_565 () Element)
(declare-fun e_567 () Element)
(declare-fun e_569 () Element)
(declare-fun e_571 () Element)
(declare-fun e_573 () Element)
(declare-fun e_575 () Element)
(declare-fun e_577 () Element)
(declare-fun e_579 () Element)
(declare-fun e_581 () Element)
(declare-fun e_583 () Element)
(declare-fun e_585 () Element)
(declare-fun e_587 () Element)
(declare-fun e_589 () Element)
(declare-fun e_591 () Element)
(declare-fun e_593 () Element)
(declare-fun e_595 () Element)
(declare-fun e_597 () Element)
(declare-fun e_599 () Element)
(declare-fun e_601 () Element)
(declare-fun e_603 () Element)
(declare-fun e_607 () Element)
(declare-fun e_609 () Element)
(declare-fun e_611 () Element)
(declare-fun e_613 () Element)
(declare-fun e_615 () Element)
(declare-fun e_617 () Element)
(declare-fun e_619 () Element)
(declare-fun e_621 () Element)
(declare-fun e_623 () Element)
(declare-fun e_625 () Element)
(declare-fun e_627 () Element)
(declare-fun e_629 () Element)
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
(assert (= a_566 (seq.update a1 i4 (seq.unit e_565))))
(assert (= a_568 (seq.update a_566 i3 (seq.unit e_567))))
(assert (= a_570 (seq.update a_568 i6 (seq.unit e_569))))
(assert (= a_572 (seq.update a_570 i7 (seq.unit e_571))))
(assert (= a_574 (seq.update a_572 i5 (seq.unit e_573))))
(assert (= a_576 (seq.update a_574 i0 (seq.unit e_575))))
(assert (= a_578 (seq.update a_576 i4 (seq.unit e_577))))
(assert (= a_580 (seq.update a_578 i7 (seq.unit e_579))))
(assert (= a_582 (seq.update a_580 i3 (seq.unit e_581))))
(assert (= a_584 (seq.update a_582 i6 (seq.unit e_583))))
(assert (= a_586 (seq.update a_584 i8 (seq.unit e_585))))
(assert (= a_588 (seq.update a_586 i2 (seq.unit e_587))))
(assert (= a_590 (seq.update a_588 i7 (seq.unit e_589))))
(assert (= a_592 (seq.update a_590 i2 (seq.unit e_591))))
(assert (= a_594 (seq.update a_592 i6 (seq.unit e_593))))
(assert (= a_596 (seq.update a_594 i4 (seq.unit e_595))))
(assert (= a_598 (seq.update a_596 i2 (seq.unit e_597))))
(assert (= a_600 (seq.update a_598 i9 (seq.unit e_599))))
(assert (= a_602 (seq.update a_600 i1 (seq.unit e_601))))
(assert (= a_604 (seq.update a_602 i2 (seq.unit e_603))))
(assert (= a_605 (seq.update a_576 i7 (seq.unit e_579))))
(assert (= a_606 (seq.update a_605 i4 (seq.unit e_577))))
(assert (= a_608 (seq.update a_606 i3 (seq.unit e_607))))
(assert (= a_610 (seq.update a_608 i6 (seq.unit e_609))))
(assert (= a_612 (seq.update a_610 i8 (seq.unit e_611))))
(assert (= a_614 (seq.update a_612 i2 (seq.unit e_613))))
(assert (= a_616 (seq.update a_614 i7 (seq.unit e_615))))
(assert (= a_618 (seq.update a_616 i2 (seq.unit e_617))))
(assert (= a_620 (seq.update a_618 i6 (seq.unit e_619))))
(assert (= a_622 (seq.update a_620 i4 (seq.unit e_621))))
(assert (= a_624 (seq.update a_622 i9 (seq.unit e_623))))
(assert (= a_626 (seq.update a_624 i2 (seq.unit e_625))))
(assert (= a_628 (seq.update a_626 i1 (seq.unit e_627))))
(assert (= a_630 (seq.update a_628 i2 (seq.unit e_629))))
(assert (= e_565 (seq.nth a1 i3)))
(assert (= e_567 (seq.nth a1 i4)))
(assert (= e_569 (seq.nth a_568 i7)))
(assert (= e_571 (seq.nth a_568 i6)))
(assert (= e_573 (seq.nth a_572 i0)))
(assert (= e_575 (seq.nth a_572 i5)))
(assert (= e_577 (seq.nth a_576 i7)))
(assert (= e_579 (seq.nth a_576 i4)))
(assert (= e_581 (seq.nth a_580 i6)))
(assert (= e_583 (seq.nth a_580 i3)))
(assert (= e_585 (seq.nth a_584 i2)))
(assert (= e_587 (seq.nth a_584 i8)))
(assert (= e_589 (seq.nth a_588 i2)))
(assert (= e_591 (seq.nth a_588 i7)))
(assert (= e_593 (seq.nth a_592 i4)))
(assert (= e_595 (seq.nth a_592 i6)))
(assert (= e_597 (seq.nth a_596 i9)))
(assert (= e_599 (seq.nth a_596 i2)))
(assert (= e_601 (seq.nth a_600 i2)))
(assert (= e_603 (seq.nth a_600 i1)))
(assert (= e_607 (seq.nth a_606 i6)))
(assert (= e_609 (seq.nth a_606 i3)))
(assert (= e_611 (seq.nth a_610 i2)))
(assert (= e_613 (seq.nth a_610 i8)))
(assert (= e_615 (seq.nth a_614 i2)))
(assert (= e_617 (seq.nth a_614 i7)))
(assert (= e_619 (seq.nth a_618 i4)))
(assert (= e_621 (seq.nth a_618 i6)))
(assert (= e_623 (seq.nth a_622 i2)))
(assert (= e_625 (seq.nth a_622 i9)))
(assert (= e_627 (seq.nth a_626 i2)))
(assert (= e_629 (seq.nth a_626 i1)))
(assert (not (= a_604 a_630)))
(check-sat)
(exit)

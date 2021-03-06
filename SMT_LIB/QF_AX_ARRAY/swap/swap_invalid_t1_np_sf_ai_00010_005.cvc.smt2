(set-info :smt-lib-version 2.6)
(set-logic QF_AX)
(set-info :source |
Benchmarks used in the followin paper:
Big proof engines as little proof engines: new results on rewrite-based satisfiability procedure
Alessandro Armando, Maria Paola Bonacina, Silvio Ranise, Stephan Schulz. 
PDPAR'05
http://www.ai.dist.unige.it/pdpar05/


|)
(set-info :category "crafted")
(set-info :status sat)
(declare-sort Index 0)
(declare-sort Element 0)
(declare-fun a_567 () (Array Index Element))
(declare-fun a_569 () (Array Index Element))
(declare-fun a_571 () (Array Index Element))
(declare-fun a_573 () (Array Index Element))
(declare-fun a_575 () (Array Index Element))
(declare-fun a_577 () (Array Index Element))
(declare-fun a_579 () (Array Index Element))
(declare-fun a_581 () (Array Index Element))
(declare-fun a_583 () (Array Index Element))
(declare-fun a_585 () (Array Index Element))
(declare-fun a_587 () (Array Index Element))
(declare-fun a_589 () (Array Index Element))
(declare-fun a_591 () (Array Index Element))
(declare-fun a_593 () (Array Index Element))
(declare-fun a_595 () (Array Index Element))
(declare-fun a_597 () (Array Index Element))
(declare-fun a_599 () (Array Index Element))
(declare-fun a_601 () (Array Index Element))
(declare-fun a_603 () (Array Index Element))
(declare-fun a_605 () (Array Index Element))
(declare-fun a_606 () (Array Index Element))
(declare-fun a_607 () (Array Index Element))
(declare-fun a_609 () (Array Index Element))
(declare-fun a_611 () (Array Index Element))
(declare-fun a_613 () (Array Index Element))
(declare-fun a_615 () (Array Index Element))
(declare-fun a_617 () (Array Index Element))
(declare-fun a_619 () (Array Index Element))
(declare-fun a_621 () (Array Index Element))
(declare-fun a_623 () (Array Index Element))
(declare-fun a_625 () (Array Index Element))
(declare-fun a_627 () (Array Index Element))
(declare-fun a_629 () (Array Index Element))
(declare-fun a_631 () (Array Index Element))
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
(declare-fun a1 () (Array Index Element))
(declare-fun i0 () Index)
(declare-fun i1 () Index)
(declare-fun i2 () Index)
(declare-fun i3 () Index)
(declare-fun i4 () Index)
(declare-fun i5 () Index)
(declare-fun i6 () Index)
(declare-fun i7 () Index)
(declare-fun i8 () Index)
(declare-fun i9 () Index)
(assert (= a_567 (store a1 i4 e_566)))
(assert (= a_569 (store a_567 i3 e_568)))
(assert (= a_571 (store a_569 i6 e_570)))
(assert (= a_573 (store a_571 i7 e_572)))
(assert (= a_575 (store a_573 i5 e_574)))
(assert (= a_577 (store a_575 i0 e_576)))
(assert (= a_579 (store a_577 i4 e_578)))
(assert (= a_581 (store a_579 i7 e_580)))
(assert (= a_583 (store a_581 i3 e_582)))
(assert (= a_585 (store a_583 i6 e_584)))
(assert (= a_587 (store a_585 i8 e_586)))
(assert (= a_589 (store a_587 i2 e_588)))
(assert (= a_591 (store a_589 i7 e_590)))
(assert (= a_593 (store a_591 i2 e_592)))
(assert (= a_595 (store a_593 i6 e_594)))
(assert (= a_597 (store a_595 i4 e_596)))
(assert (= a_599 (store a_597 i2 e_598)))
(assert (= a_601 (store a_599 i9 e_600)))
(assert (= a_603 (store a_601 i1 e_602)))
(assert (= a_605 (store a_603 i2 e_604)))
(assert (= a_606 (store a_577 i7 e_580)))
(assert (= a_607 (store a_606 i4 e_578)))
(assert (= a_609 (store a_607 i3 e_608)))
(assert (= a_611 (store a_609 i6 e_610)))
(assert (= a_613 (store a_611 i8 e_612)))
(assert (= a_615 (store a_613 i2 e_614)))
(assert (= a_617 (store a_615 i7 e_616)))
(assert (= a_619 (store a_617 i2 e_618)))
(assert (= a_621 (store a_619 i6 e_620)))
(assert (= a_623 (store a_621 i4 e_622)))
(assert (= a_625 (store a_623 i9 e_624)))
(assert (= a_627 (store a_625 i2 e_626)))
(assert (= a_629 (store a_627 i1 e_628)))
(assert (= a_631 (store a_629 i3 e_630)))
(assert (= e_566 (select a1 i3)))
(assert (= e_568 (select a1 i4)))
(assert (= e_570 (select a_569 i7)))
(assert (= e_572 (select a_569 i6)))
(assert (= e_574 (select a_573 i0)))
(assert (= e_576 (select a_573 i5)))
(assert (= e_578 (select a_577 i7)))
(assert (= e_580 (select a_577 i4)))
(assert (= e_582 (select a_581 i6)))
(assert (= e_584 (select a_581 i3)))
(assert (= e_586 (select a_585 i2)))
(assert (= e_588 (select a_585 i8)))
(assert (= e_590 (select a_589 i2)))
(assert (= e_592 (select a_589 i7)))
(assert (= e_594 (select a_593 i4)))
(assert (= e_596 (select a_593 i6)))
(assert (= e_598 (select a_597 i9)))
(assert (= e_600 (select a_597 i2)))
(assert (= e_602 (select a_601 i2)))
(assert (= e_604 (select a_601 i1)))
(assert (= e_608 (select a_607 i6)))
(assert (= e_610 (select a_607 i3)))
(assert (= e_612 (select a_611 i2)))
(assert (= e_614 (select a_611 i8)))
(assert (= e_616 (select a_615 i2)))
(assert (= e_618 (select a_615 i7)))
(assert (= e_620 (select a_619 i4)))
(assert (= e_622 (select a_619 i6)))
(assert (= e_624 (select a_623 i2)))
(assert (= e_626 (select a_623 i9)))
(assert (= e_628 (select a_627 i3)))
(assert (= e_630 (select a_627 i1)))
(assert (not (= a_605 a_631)))
(check-sat)
(exit)

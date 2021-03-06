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
(declare-fun a_664 () (Array Index Element))
(declare-fun a_666 () (Array Index Element))
(declare-fun a_668 () (Array Index Element))
(declare-fun a_670 () (Array Index Element))
(declare-fun a_672 () (Array Index Element))
(declare-fun a_674 () (Array Index Element))
(declare-fun a_676 () (Array Index Element))
(declare-fun a_678 () (Array Index Element))
(declare-fun a_680 () (Array Index Element))
(declare-fun a_682 () (Array Index Element))
(declare-fun a_684 () (Array Index Element))
(declare-fun a_686 () (Array Index Element))
(declare-fun a_688 () (Array Index Element))
(declare-fun a_690 () (Array Index Element))
(declare-fun a_692 () (Array Index Element))
(declare-fun a_694 () (Array Index Element))
(declare-fun a_696 () (Array Index Element))
(declare-fun a_698 () (Array Index Element))
(declare-fun a_699 () (Array Index Element))
(declare-fun a_700 () (Array Index Element))
(declare-fun a_702 () (Array Index Element))
(declare-fun a_704 () (Array Index Element))
(declare-fun a_706 () (Array Index Element))
(declare-fun a_708 () (Array Index Element))
(declare-fun a_710 () (Array Index Element))
(declare-fun a_712 () (Array Index Element))
(declare-fun a_714 () (Array Index Element))
(declare-fun a_716 () (Array Index Element))
(declare-fun a_718 () (Array Index Element))
(declare-fun a_720 () (Array Index Element))
(declare-fun a_722 () (Array Index Element))
(declare-fun a_724 () (Array Index Element))
(declare-fun a_726 () (Array Index Element))
(declare-fun a_728 () (Array Index Element))
(declare-fun a_730 () (Array Index Element))
(declare-fun a_732 () (Array Index Element))
(declare-fun e_663 () Element)
(declare-fun e_665 () Element)
(declare-fun e_667 () Element)
(declare-fun e_669 () Element)
(declare-fun e_671 () Element)
(declare-fun e_673 () Element)
(declare-fun e_675 () Element)
(declare-fun e_677 () Element)
(declare-fun e_679 () Element)
(declare-fun e_681 () Element)
(declare-fun e_683 () Element)
(declare-fun e_685 () Element)
(declare-fun e_687 () Element)
(declare-fun e_689 () Element)
(declare-fun e_691 () Element)
(declare-fun e_693 () Element)
(declare-fun e_695 () Element)
(declare-fun e_697 () Element)
(declare-fun e_701 () Element)
(declare-fun e_703 () Element)
(declare-fun e_705 () Element)
(declare-fun e_707 () Element)
(declare-fun e_709 () Element)
(declare-fun e_711 () Element)
(declare-fun e_713 () Element)
(declare-fun e_715 () Element)
(declare-fun e_717 () Element)
(declare-fun e_719 () Element)
(declare-fun e_721 () Element)
(declare-fun e_723 () Element)
(declare-fun e_725 () Element)
(declare-fun e_727 () Element)
(declare-fun e_729 () Element)
(declare-fun e_731 () Element)
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
(assert (= a_664 (store a1 i4 e_663)))
(assert (= a_666 (store a_664 i0 e_665)))
(assert (= a_668 (store a_666 i5 e_667)))
(assert (= a_670 (store a_668 i2 e_669)))
(assert (= a_672 (store a_670 i4 e_671)))
(assert (= a_674 (store a_672 i2 e_673)))
(assert (= a_676 (store a_674 i7 e_675)))
(assert (= a_678 (store a_676 i2 e_677)))
(assert (= a_680 (store a_678 i8 e_679)))
(assert (= a_682 (store a_680 i0 e_681)))
(assert (= a_684 (store a_682 i3 e_683)))
(assert (= a_686 (store a_684 i6 e_685)))
(assert (= a_688 (store a_686 i4 e_687)))
(assert (= a_690 (store a_688 i1 e_689)))
(assert (= a_692 (store a_690 i4 e_691)))
(assert (= a_694 (store a_692 i2 e_693)))
(assert (= a_696 (store a_694 i7 e_695)))
(assert (= a_698 (store a_696 i0 e_697)))
(assert (= a_699 (store a1 i0 e_665)))
(assert (= a_700 (store a_699 i4 e_663)))
(assert (= a_702 (store a_700 i5 e_701)))
(assert (= a_704 (store a_702 i2 e_703)))
(assert (= a_706 (store a_704 i4 e_705)))
(assert (= a_708 (store a_706 i2 e_707)))
(assert (= a_710 (store a_708 i7 e_709)))
(assert (= a_712 (store a_710 i2 e_711)))
(assert (= a_714 (store a_712 i8 e_713)))
(assert (= a_716 (store a_714 i0 e_715)))
(assert (= a_718 (store a_716 i3 e_717)))
(assert (= a_720 (store a_718 i6 e_719)))
(assert (= a_722 (store a_720 i1 e_721)))
(assert (= a_724 (store a_722 i4 e_723)))
(assert (= a_726 (store a_724 i4 e_725)))
(assert (= a_728 (store a_726 i2 e_727)))
(assert (= a_730 (store a_728 i0 e_729)))
(assert (= a_732 (store a_730 i8 e_731)))
(assert (= e_663 (select a1 i0)))
(assert (= e_665 (select a1 i4)))
(assert (= e_667 (select a_666 i2)))
(assert (= e_669 (select a_666 i5)))
(assert (= e_671 (select a_670 i2)))
(assert (= e_673 (select a_670 i4)))
(assert (= e_675 (select a_674 i2)))
(assert (= e_677 (select a_674 i7)))
(assert (= e_679 (select a_678 i0)))
(assert (= e_681 (select a_678 i8)))
(assert (= e_683 (select a_682 i6)))
(assert (= e_685 (select a_682 i3)))
(assert (= e_687 (select a_686 i1)))
(assert (= e_689 (select a_686 i4)))
(assert (= e_691 (select a_690 i2)))
(assert (= e_693 (select a_690 i4)))
(assert (= e_695 (select a_694 i0)))
(assert (= e_697 (select a_694 i7)))
(assert (= e_701 (select a_700 i2)))
(assert (= e_703 (select a_700 i5)))
(assert (= e_705 (select a_704 i2)))
(assert (= e_707 (select a_704 i4)))
(assert (= e_709 (select a_708 i2)))
(assert (= e_711 (select a_708 i7)))
(assert (= e_713 (select a_712 i0)))
(assert (= e_715 (select a_712 i8)))
(assert (= e_717 (select a_716 i6)))
(assert (= e_719 (select a_716 i3)))
(assert (= e_721 (select a_720 i4)))
(assert (= e_723 (select a_720 i1)))
(assert (= e_725 (select a_724 i2)))
(assert (= e_727 (select a_724 i4)))
(assert (= e_729 (select a_728 i8)))
(assert (= e_731 (select a_728 i0)))
(assert (not (= a_698 a_732)))
(check-sat)
(exit)

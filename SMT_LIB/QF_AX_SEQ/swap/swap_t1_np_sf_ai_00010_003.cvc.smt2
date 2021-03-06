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
(declare-fun a_864 () (Seq Element))
(declare-fun a_865 () (Seq Element))
(declare-fun a_867 () (Seq Element))
(declare-fun a_869 () (Seq Element))
(declare-fun a_871 () (Seq Element))
(declare-fun a_873 () (Seq Element))
(declare-fun a_875 () (Seq Element))
(declare-fun a_877 () (Seq Element))
(declare-fun a_879 () (Seq Element))
(declare-fun a_881 () (Seq Element))
(declare-fun a_883 () (Seq Element))
(declare-fun a_885 () (Seq Element))
(declare-fun a_887 () (Seq Element))
(declare-fun a_889 () (Seq Element))
(declare-fun a_891 () (Seq Element))
(declare-fun a_893 () (Seq Element))
(declare-fun a_895 () (Seq Element))
(declare-fun a_897 () (Seq Element))
(declare-fun a_899 () (Seq Element))
(declare-fun a_901 () (Seq Element))
(declare-fun a_902 () (Seq Element))
(declare-fun a_903 () (Seq Element))
(declare-fun a_905 () (Seq Element))
(declare-fun a_907 () (Seq Element))
(declare-fun a_909 () (Seq Element))
(declare-fun a_911 () (Seq Element))
(declare-fun a_913 () (Seq Element))
(declare-fun a_915 () (Seq Element))
(declare-fun a_917 () (Seq Element))
(declare-fun a_919 () (Seq Element))
(declare-fun a_921 () (Seq Element))
(declare-fun a_923 () (Seq Element))
(declare-fun a_925 () (Seq Element))
(declare-fun a_927 () (Seq Element))
(declare-fun a_929 () (Seq Element))
(declare-fun a_931 () (Seq Element))
(declare-fun e_863 () Element)
(declare-fun e_866 () Element)
(declare-fun e_868 () Element)
(declare-fun e_870 () Element)
(declare-fun e_872 () Element)
(declare-fun e_874 () Element)
(declare-fun e_876 () Element)
(declare-fun e_878 () Element)
(declare-fun e_880 () Element)
(declare-fun e_882 () Element)
(declare-fun e_884 () Element)
(declare-fun e_886 () Element)
(declare-fun e_888 () Element)
(declare-fun e_890 () Element)
(declare-fun e_892 () Element)
(declare-fun e_894 () Element)
(declare-fun e_896 () Element)
(declare-fun e_898 () Element)
(declare-fun e_900 () Element)
(declare-fun e_904 () Element)
(declare-fun e_906 () Element)
(declare-fun e_908 () Element)
(declare-fun e_910 () Element)
(declare-fun e_912 () Element)
(declare-fun e_914 () Element)
(declare-fun e_916 () Element)
(declare-fun e_918 () Element)
(declare-fun e_920 () Element)
(declare-fun e_922 () Element)
(declare-fun e_924 () Element)
(declare-fun e_926 () Element)
(declare-fun e_928 () Element)
(declare-fun e_930 () Element)
(declare-fun a1 () (Seq Element))
(declare-fun i0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)
(assert (= a_864 (seq.update a1 i5 (seq.unit e_863))))
(assert (= a_865 (seq.update a_864 i5 (seq.unit e_863))))
(assert (= a_867 (seq.update a_865 i1 (seq.unit e_866))))
(assert (= a_869 (seq.update a_867 i3 (seq.unit e_868))))
(assert (= a_871 (seq.update a_869 i1 (seq.unit e_870))))
(assert (= a_873 (seq.update a_871 i0 (seq.unit e_872))))
(assert (= a_875 (seq.update a_873 i8 (seq.unit e_874))))
(assert (= a_877 (seq.update a_875 i6 (seq.unit e_876))))
(assert (= a_879 (seq.update a_877 i1 (seq.unit e_878))))
(assert (= a_881 (seq.update a_879 i5 (seq.unit e_880))))
(assert (= a_883 (seq.update a_881 i0 (seq.unit e_882))))
(assert (= a_885 (seq.update a_883 i7 (seq.unit e_884))))
(assert (= a_887 (seq.update a_885 i7 (seq.unit e_886))))
(assert (= a_889 (seq.update a_887 i9 (seq.unit e_888))))
(assert (= a_891 (seq.update a_889 i1 (seq.unit e_890))))
(assert (= a_893 (seq.update a_891 i5 (seq.unit e_892))))
(assert (= a_895 (seq.update a_893 i3 (seq.unit e_894))))
(assert (= a_897 (seq.update a_895 i2 (seq.unit e_896))))
(assert (= a_899 (seq.update a_897 i0 (seq.unit e_898))))
(assert (= a_901 (seq.update a_899 i7 (seq.unit e_900))))
(assert (= a_902 (seq.update a_869 i0 (seq.unit e_872))))
(assert (= a_903 (seq.update a_902 i1 (seq.unit e_870))))
(assert (= a_905 (seq.update a_903 i8 (seq.unit e_904))))
(assert (= a_907 (seq.update a_905 i6 (seq.unit e_906))))
(assert (= a_909 (seq.update a_907 i5 (seq.unit e_908))))
(assert (= a_911 (seq.update a_909 i1 (seq.unit e_910))))
(assert (= a_913 (seq.update a_911 i0 (seq.unit e_912))))
(assert (= a_915 (seq.update a_913 i7 (seq.unit e_914))))
(assert (= a_917 (seq.update a_915 i7 (seq.unit e_916))))
(assert (= a_919 (seq.update a_917 i9 (seq.unit e_918))))
(assert (= a_921 (seq.update a_919 i1 (seq.unit e_920))))
(assert (= a_923 (seq.update a_921 i5 (seq.unit e_922))))
(assert (= a_925 (seq.update a_923 i3 (seq.unit e_924))))
(assert (= a_927 (seq.update a_925 i2 (seq.unit e_926))))
(assert (= a_929 (seq.update a_927 i7 (seq.unit e_928))))
(assert (= a_931 (seq.update a_929 i0 (seq.unit e_930))))
(assert (= e_863 (seq.nth a1 i5)))
(assert (= e_866 (seq.nth a_865 i3)))
(assert (= e_868 (seq.nth a_865 i1)))
(assert (= e_870 (seq.nth a_869 i0)))
(assert (= e_872 (seq.nth a_869 i1)))
(assert (= e_874 (seq.nth a_873 i6)))
(assert (= e_876 (seq.nth a_873 i8)))
(assert (= e_878 (seq.nth a_877 i5)))
(assert (= e_880 (seq.nth a_877 i1)))
(assert (= e_882 (seq.nth a_881 i7)))
(assert (= e_884 (seq.nth a_881 i0)))
(assert (= e_886 (seq.nth a_885 i9)))
(assert (= e_888 (seq.nth a_885 i7)))
(assert (= e_890 (seq.nth a_889 i5)))
(assert (= e_892 (seq.nth a_889 i1)))
(assert (= e_894 (seq.nth a_893 i2)))
(assert (= e_896 (seq.nth a_893 i3)))
(assert (= e_898 (seq.nth a_897 i7)))
(assert (= e_900 (seq.nth a_897 i0)))
(assert (= e_904 (seq.nth a_903 i6)))
(assert (= e_906 (seq.nth a_903 i8)))
(assert (= e_908 (seq.nth a_907 i1)))
(assert (= e_910 (seq.nth a_907 i5)))
(assert (= e_912 (seq.nth a_911 i7)))
(assert (= e_914 (seq.nth a_911 i0)))
(assert (= e_916 (seq.nth a_915 i9)))
(assert (= e_918 (seq.nth a_915 i7)))
(assert (= e_920 (seq.nth a_919 i5)))
(assert (= e_922 (seq.nth a_919 i1)))
(assert (= e_924 (seq.nth a_923 i2)))
(assert (= e_926 (seq.nth a_923 i3)))
(assert (= e_928 (seq.nth a_927 i0)))
(assert (= e_930 (seq.nth a_927 i7)))
(assert (not (= a_901 a_931)))
(check-sat)
(exit)

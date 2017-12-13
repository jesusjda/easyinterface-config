(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l13 Loc)
(declare-const l14 Loc)
(declare-const l15 Loc)
(declare-const l16 Loc)
(declare-const l17 Loc)
(declare-const l18 Loc)
(declare-const l19 Loc)
(declare-const l20 Loc)
(declare-const l21 Loc)
(declare-const l22 Loc)
(declare-const l23 Loc)
(declare-const l24 Loc)
(declare-const l25 Loc)
(declare-const l26 Loc)
(declare-const l27 Loc)
(declare-const l28 Loc)
(declare-const l29 Loc)
(declare-const l30 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24 l25 l26 l27 l28 l29 l30))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc^0 Loc) (__const_12^0 Int) (bAllDiff^0 Int) (bDomain^0 Int) (bGray^0 Int) (nDiff^0 Int) (nDim^0 Int) (ni^0 Int) (nj^0 Int) (tmp^0 Int) (tmp___0^0 Int) (tmp___1^0 Int) (tmp___2^0 Int) (tmp___3^0 Int) ) Bool
  (cfg_init pc^0 l30 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_12^0 Int) (bAllDiff^0 Int) (bDomain^0 Int) (bGray^0 Int) (nDiff^0 Int) (nDim^0 Int) (ni^0 Int) (nj^0 Int) (tmp^0 Int) (tmp___0^0 Int) (tmp___1^0 Int) (tmp___2^0 Int) (tmp___3^0 Int)
                 (pc^post Loc) (__const_12^post Int) (bAllDiff^post Int) (bDomain^post Int) (bGray^post Int) (nDiff^post Int) (nDim^post Int) (ni^post Int) (nj^post Int) (tmp^post Int) (tmp___0^post Int) (tmp___1^post Int) (tmp___2^post Int) (tmp___3^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___3^post 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 bGray^0) 0) (<= 0 (+ 0 bGray^0))) (= tmp___3^post 1)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 bGray^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 bGray^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 bAllDiff^0) 0) (<= 0 (+ 0 bAllDiff^0))) (= tmp___3^post 1)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 bAllDiff^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 bAllDiff^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l5 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 bDomain^0) 0) (<= 0 (+ 0 bDomain^0))) (= tmp___3^post 1)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 bDomain^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 bDomain^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (= bGray^post (+ 0 tmp___2^0)) (= ni^post (+ 1 ni^0))) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l10 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___2^post 1) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l11 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 nDiff^0) 0) (<= 0 (+ 0 nDiff^0))) (= tmp___2^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 nDiff^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nDiff^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l12 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___2^post 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l13 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 bGray^0) 0) (<= 0 (+ 0 bGray^0))) (= tmp___2^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l13 pc^post l12 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 bGray^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l13 pc^post l12 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 bGray^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l14 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l16 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ -1 nDim^0) (+ 0 ni^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l16 pc^post l13 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 ni^0) (+ -1 nDim^0)) (= nDiff^post nDiff^post)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l17 pc^post l18 (and (and (and (and (and (and (and (and (and (and (and (and (= bAllDiff^post (+ 0 tmp___1^0)) (= nj^post (+ 1 nj^0))) (= __const_12^0 __const_12^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l19 pc^post l20 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l21 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___1^post 1) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l22 pc^post l21 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l22 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___1^post 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l22 pc^post l21 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l23 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 bAllDiff^0) 0) (<= 0 (+ 0 bAllDiff^0))) (= tmp___1^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l23 pc^post l22 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 bAllDiff^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l23 pc^post l22 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 bAllDiff^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l24 pc^post l19 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 nDim^0) (+ 0 nj^0)) (= ni^post (+ 1 ni^0))) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l24 pc^post l23 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nj^0) (+ 0 nDim^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l20 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ -1 nDim^0) (+ 0 ni^0)) (= ni^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l20 pc^post l18 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 ni^0) (+ -1 nDim^0)) (= nj^post (+ 1 ni^0))) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l18 pc^post l24 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l25 pc^post l14 (and (and (and (and (and (and (and (and (and (and (and (and (= bDomain^post (+ 0 tmp___0^0)) (= ni^post (+ 1 ni^0))) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l26 pc^post l25 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___0^post 1) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l26 pc^post l25 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___0^post 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l27 pc^post l25 (and (and (and (and (and (and (and (and (and (and (and (and (= tmp___0^post 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l27 pc^post l26 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l28 pc^post l25 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 bDomain^0) 0) (<= 0 (+ 0 bDomain^0))) (= tmp___0^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l28 pc^post l27 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 bDomain^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l28 pc^post l27 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 bDomain^0) 0) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l9 pc^post l16 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l15 pc^post l19 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 nDim^0) (+ 0 ni^0)) (= ni^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l15 pc^post l28 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 ni^0) (+ 0 nDim^0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l7 pc^post l14 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 nDim^0) (+ 0 ni^0)) (= ni^post 0)) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 ni^0) (+ 0 nDim^0)) (= ni^post (+ 1 ni^0))) (= __const_12^0 __const_12^post)) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l29 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (= nDim^post (+ 0 __const_12^0)) (= bDomain^post 1)) (= bAllDiff^post 1)) (= bGray^post 1)) (= tmp^post tmp^post)) (= ni^post 0)) (= __const_12^0 __const_12^post)) (= nDiff^0 nDiff^post)) (= nj^0 nj^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
    (cfg_trans2 pc^0 l30 pc^post l29 (and (and (and (and (and (and (and (and (and (and (and (and (= __const_12^0 __const_12^post) (= bAllDiff^0 bAllDiff^post)) (= bDomain^0 bDomain^post)) (= bGray^0 bGray^post)) (= nDiff^0 nDiff^post)) (= nDim^0 nDim^post)) (= ni^0 ni^post)) (= nj^0 nj^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)))
  )
)

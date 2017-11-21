(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f172_0_createList_LE Loc)
(declare-const f355_0_reverse_NULL Loc)
(declare-const f370_0_reverse_FieldAccess Loc)
(declare-const f385_0_reverse_FieldAccess Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f172_0_createList_LE f355_0_reverse_NULL f370_0_reverse_FieldAccess f385_0_reverse_FieldAccess __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f172_0_createList_LE (exists ((x4 Int)) (and (and (and (and (and (and (and (> x4 (- 1)) (> arg2 0)) (<= (- arg1P 1) arg1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 1)) (> arg2P 1)) (= (- x4 2) arg3P))))
    (cfg_trans2 pc f172_0_createList_LE pc1 f172_0_createList_LE (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 0)) (<= (- arg2P 2) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 2)) (= (- arg3 1) arg3P)))
    (cfg_trans2 pc f172_0_createList_LE pc1 f355_0_reverse_NULL (and (and (and (and (and (and (and (and (<= arg1P arg1) (< arg3 1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 1)) (> arg2P 1)))
    (cfg_trans2 pc f172_0_createList_LE pc1 f355_0_reverse_NULL (and (and (and (and (and (and (<= arg1P arg1) (< arg3 1)) (<= (- arg1P 1) arg2)) (> arg1 1)) (> arg2 0)) (> arg1P 1)) (> arg2P (- 1))))
    (cfg_trans2 pc f172_0_createList_LE pc1 f355_0_reverse_NULL (and (and (and (and (and (and (<= arg1P arg1) (< arg3 1)) (<= (- arg1P 1) arg2)) (> arg1 1)) (> arg2 0)) (> arg1P 1)) (> arg2P 0)))
    (cfg_trans2 pc f172_0_createList_LE pc1 f370_0_reverse_FieldAccess (and (and (and (and (and (and (<= arg1P arg1) (< arg3 1)) (<= (- arg1P 1) arg2)) (> arg1 1)) (> arg2 0)) (> arg1P 1)) (> arg2P 0)))
    (cfg_trans2 pc f355_0_reverse_NULL pc1 f385_0_reverse_FieldAccess (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg2) (<= arg2P arg2)) (<= arg3P arg1)) (<= (+ arg4P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P (- 1))) (> arg2P 0)) (> arg3P 0)) (> arg4P (- 1))))
    (cfg_trans2 pc f385_0_reverse_FieldAccess pc1 f355_0_reverse_NULL (and (and (and (and (and (and (and (and (<= arg2P arg1) (<= (+ arg2P 1) arg2)) (<= arg2P arg4)) (> arg1 (- 1))) (> arg2 0)) (> arg3 0)) (> arg4 (- 1))) (> arg1P 2)) (> arg2P (- 1))))
    (cfg_trans2 pc f385_0_reverse_FieldAccess pc1 f355_0_reverse_NULL (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (- arg1P 3) arg1) (<= (- arg1P 2) arg2)) (<= (- arg1P 2) arg3)) (<= (- arg1P 3) arg4)) (<= arg2P arg1)) (<= (+ arg2P 1) arg2)) (<= (+ arg2P 1) arg3)) (<= arg2P arg4)) (> arg1 (- 1))) (> arg2 0)) (> arg3 0)) (> arg4 (- 1))) (> arg1P 2)) (> arg2P (- 1))))
    (cfg_trans2 pc f370_0_reverse_FieldAccess pc1 f370_0_reverse_FieldAccess (and (and (and (and (and (and (and (and (> arg3 0) (> arg4 0)) (< arg4P arg4)) (<= (- arg1P 2) arg1)) (> arg1 0)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= arg3 arg3P)))
    (cfg_trans2 pc f370_0_reverse_FieldAccess pc1 f385_0_reverse_FieldAccess (exists ((x66 Int) (x65 Int)) (and (and (and (and (and (and (and (and (and (> x66 0) (> x65 (- 1))) (< x66 x65)) (<= (- arg3P 2) arg1)) (> arg1 0)) (> arg2 2)) (> arg1P (- 1))) (> arg2P 0)) (> arg3P 2)) (> arg4P (- 1)))))
    (cfg_trans2 pc f370_0_reverse_FieldAccess pc1 f355_0_reverse_NULL (exists ((x73 Int) (x74 Int)) (and (and (and (and (and (and (and (and (> x73 (- 1)) (< x74 x73)) (<= (- arg1P 2) arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (> arg1 0)) (> arg2 2)) (> arg1P 2)) (> arg2P 0))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)

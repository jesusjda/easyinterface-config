(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f421_0_createForm_LE Loc)
(declare-const f410_0_main_InvokeMethod Loc)
(declare-const f192_0_createForm_Return Loc)
(declare-const f2239_0_norm_NONNULL Loc)
(declare-const f1614_0_main_InvokeMethod Loc)
(declare-const f534_0_createForm_InvokeMethod Loc)
(declare-const f571_0_createForm_InvokeMethod Loc)
(declare-const f1752_0_createForm_InvokeMethod Loc)
(declare-const f2738_0_norm_InvokeMethod Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f421_0_createForm_LE f410_0_main_InvokeMethod f192_0_createForm_Return f2239_0_norm_NONNULL f1614_0_main_InvokeMethod f534_0_createForm_InvokeMethod f571_0_createForm_InvokeMethod f1752_0_createForm_InvokeMethod f2738_0_norm_InvokeMethod __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f421_0_createForm_LE (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f410_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f1_0_main_Load pc1 f410_0_main_InvokeMethod (exists ((x9 Int)) (and (and (and (and (> x9 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0))))
    (cfg_trans2 pc f192_0_createForm_Return pc1 f410_0_main_InvokeMethod (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f410_0_main_InvokeMethod pc1 f2239_0_norm_NONNULL (exists ((x13 Int)) (and (and (and (<= (+ arg1P 1) arg1) (> x13 0)) (> arg1 0)) (> arg1P (- 1)))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x21 Int)) (and (and (and (and (and (> x21 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x27 Int)) (and (and (and (and (and (> x27 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x33 Int)) (and (and (and (and (and (> x33 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x39 Int)) (and (and (and (and (and (> x39 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x45 Int)) (and (and (and (and (and (> x45 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x51 Int)) (and (and (and (and (and (> x51 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x57 Int)) (and (and (and (and (and (> x57 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1614_0_main_InvokeMethod (exists ((x63 Int)) (and (and (and (and (and (and (> x63 (- 1)) (> arg2 0)) (<= arg1P arg1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f1614_0_main_InvokeMethod pc1 f2239_0_norm_NONNULL (exists ((x64 Int)) (and (and (and (and (and (> x64 0) (> arg3 1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0))))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f421_0_createForm_LE (exists ((x72 Int)) (and (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 0)) (< arg3 arg2)) (> x72 (- 1))) (< (- arg1 1) arg1)) (< x72 43)) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P))))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f534_0_createForm_InvokeMethod (exists ((x75 Int)) (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg2 (- 1))) (< arg3 arg2)) (< x75 43)) (> x75 (- 1))) (= 1 arg1)) (= 1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P))))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f534_0_createForm_InvokeMethod (exists ((x80 Int)) (and (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 0)) (< arg3 arg2)) (> x80 (- 1))) (< (- arg1 1) arg1)) (< x80 43)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg2 arg3P))))
    (cfg_trans2 pc f534_0_createForm_InvokeMethod pc1 f421_0_createForm_LE (and (and (and (and (and (< arg2 arg1) (> arg1 0)) (> arg4 1)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f534_0_createForm_InvokeMethod pc1 f571_0_createForm_InvokeMethod (and (and (and (and (and (and (> arg4 1) (> arg1 0)) (= 0 arg2)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f534_0_createForm_InvokeMethod pc1 f571_0_createForm_InvokeMethod (and (and (and (and (and (> arg1 0) (< arg2 arg1)) (> arg4 1)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f571_0_createForm_InvokeMethod pc1 f421_0_createForm_LE (and (and (and (and (and (< arg2 arg1) (> arg1 0)) (> arg4 1)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f421_0_createForm_LE (exists ((x101 Int)) (and (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 0)) (< arg3 arg2)) (> x101 (- 1))) (< x101 43)) (> arg3P 1)) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f534_0_createForm_InvokeMethod pc1 f421_0_createForm_LE (and (and (and (and (and (and (> arg1 0) (> arg4 1)) (> arg3P 1)) (< arg2 arg1)) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)) (= arg3 arg2P)))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f1752_0_createForm_InvokeMethod (exists ((x136 Int)) (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg2 (- 1))) (< arg3 arg2)) (> x136 (- 1))) (> arg4P 1)) (< x136 43)) (= 1 arg1)) (= 1 arg1P)) (= 0 arg2P)) (= arg2 arg3P))))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f1752_0_createForm_InvokeMethod (exists ((x115 Int) (x116 Int)) (and (and (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 0)) (< arg3 arg2)) (> x115 (- 1))) (< x115 43)) (> x116 1)) (< (- arg1 1) arg1)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg2 arg3P))))
    (cfg_trans2 pc f1752_0_createForm_InvokeMethod pc1 f421_0_createForm_LE (and (and (and (and (and (< arg2 arg1) (> arg1 0)) (> arg4 1)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f421_0_createForm_LE pc1 f421_0_createForm_LE (exists ((x125 Int) (x126 Int)) (and (and (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 0)) (< arg3 arg2)) (> x125 (- 1))) (< x125 43)) (< (- arg1 1) arg1)) (> arg3P 1)) (> x126 1)) (= (- arg1 1) arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2239_0_norm_NONNULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2239_0_norm_NONNULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2239_0_norm_NONNULL (and (and (<= (- arg1P 2) arg1) (> arg1 2)) (> arg1P 2)))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2239_0_norm_NONNULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (and (<= (- arg1P 4) arg1) (<= (+ arg2P 2) arg1)) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (and (<= (- arg1P 4) arg1) (<= (+ arg2P 2) arg1)) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (and (<= (- arg1P 4) arg1) (<= (+ arg2P 2) arg1)) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (<= (+ arg2P 2) arg1) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (<= (+ arg2P 2) arg1) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (<= (+ arg2P 2) arg1) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (<= (+ arg2P 2) arg1) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (<= (+ arg2P 2) arg1) (<= (+ arg4P 2) arg1)) (> arg1 1)) (> arg1P 5)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2239_0_norm_NONNULL pc1 f2738_0_norm_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 2) arg1)) (<= (+ arg4P 2) arg1)) (> arg1 3)) (> arg1P 3)) (> arg2P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f2738_0_norm_InvokeMethod pc1 f2239_0_norm_NONNULL (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= arg1P arg4)) (> arg1 3)) (> arg2 (- 1))) (> arg4 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)

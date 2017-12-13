(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f593_0_main_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f593_0_main_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f593_0_main_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (= 0 arg2)) (= 0 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= 0 arg6P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f593_0_main_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2P (- 1))) (> arg1 0)) (> arg1P 0)) (= 1 arg2)) (= 0 arg3P)) (= 1 arg4P)) (= 1 arg5P)) (= 1 arg6P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f593_0_main_LE (and (and (and (and (and (and (and (and (> arg3P (- 1)) (> arg2 1)) (> arg2P (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg4P)) (= 2 arg5P)) (= arg2 arg6P)))
    (cfg_trans2 pc f593_0_main_LE pc1 f593_0_main_LE (and (and (and (and (and (and (and (and (and (and (and (>= arg5 arg4) (> arg4 (- 1))) (> arg3 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg6)) (= (- arg2 1) arg2P)) (= (- arg2 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg4 arg6P)))
    (cfg_trans2 pc f593_0_main_LE pc1 f593_0_main_LE (exists ((x22 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (> arg5 (- 1))) (< arg5 arg4)) (> x22 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg6)) (= (- (- arg2 1) x22) arg2P)) (= (- (- arg2 1) x22) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)) (= arg4 arg6P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)

(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f213_0_increase_LE Loc)
(declare-const f213_0_increase_LE' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f213_0_increase_LE f213_0_increase_LE' __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f213_0_increase_LE (and (and (and (and (> arg1P (- 1)) (> arg2 1)) (> arg2P (- 1))) (> arg1 0)) (= (+ arg1P arg2P) arg3P)))
    (cfg_trans2 pc f213_0_increase_LE pc1 f213_0_increase_LE' (exists ((x13 Int)) (and (and (and (and (and (> arg1 (- 2)) (< (- arg2 (* 2 x13)) 0)) (> arg3 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f213_0_increase_LE pc1 f213_0_increase_LE' (exists ((x17 Int)) (and (and (and (and (and (> arg1 (- 2)) (> (- arg2 (* 2 x17)) 0)) (> arg3 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f213_0_increase_LE' pc1 f213_0_increase_LE (exists ((x21 Int)) (and (and (and (and (and (and (> (- arg2 (* 2 x21)) 0) (> arg1 (- 2))) (< (- arg2 (* 2 x21)) 2)) (> arg3 0)) (= (+ arg1 1) arg1P)) (= arg2 arg2P)) (= (+ (+ arg1 1) arg2) arg3P))))
    (cfg_trans2 pc f213_0_increase_LE pc1 f213_0_increase_LE' (exists ((x25 Int)) (and (and (and (and (and (> arg1 (- 2)) (= (- arg2 (* 2 x25)) 0)) (> arg3 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f213_0_increase_LE' pc1 f213_0_increase_LE (exists ((x29 Int)) (and (and (and (and (and (and (and (> arg1 (- 2)) (> arg3 0)) (= (- arg2 (* 2 x29)) 0)) (< (- arg2 (* 2 x29)) 2)) (>= (- arg2 (* 2 x29)) 0)) (= (+ arg1 1) arg1P)) (= (- arg2 2) arg2P)) (= (+ (+ arg1 1) (- arg2 2)) arg3P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
(declare-sort Loc 0)
(declare-const f381_0_createList_Load Loc)
(declare-const f760_0_createList_Load Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f1973_0__init__GE Loc)
(declare-const f399_0_createList_Return Loc)
(declare-const f2251_0__init__LE Loc)
(declare-const f2679_0_hasNext_EQ Loc)
(declare-const f1782_0_createList_LE Loc)
(declare-const __init Loc)
(assert (distinct f381_0_createList_Load f760_0_createList_Load f1_0_main_Load f1973_0__init__GE f399_0_createList_Return f2251_0__init__LE f2679_0_hasNext_EQ f1782_0_createList_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) (arg10 Int) (arg11 Int) (arg12 Int) (arg13 Int) (arg14 Int) (arg15 Int) (arg16 Int) (arg17 Int) (arg18 Int) (arg19 Int) (arg20 Int) (arg21 Int) (arg22 Int) (arg23 Int) (arg24 Int) (arg25 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) (arg10 Int) (arg11 Int) (arg12 Int) (arg13 Int) (arg14 Int) (arg15 Int) (arg16 Int) (arg17 Int) (arg18 Int) (arg19 Int) (arg20 Int) (arg21 Int) (arg22 Int) (arg23 Int) (arg24 Int) (arg25 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int) (arg9P Int) (arg10P Int) (arg11P Int) (arg12P Int) (arg13P Int) (arg14P Int) (arg15P Int) (arg16P Int) (arg17P Int) (arg18P Int) (arg19P Int) (arg20P Int) (arg21P Int) (arg22P Int) (arg23P Int) (arg24P Int) (arg25P Int)
             ) Bool
  (or
    (cfg_trans2 pc f381_0_createList_Load pc1 f760_0_createList_Load (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 9) (> arg2P 9)) (<= (+ arg7 3) arg2)) (<= (+ arg6 5) arg2)) (= arg1 arg1P)) (= 0 arg3P)) (= 0 arg4P)) (= arg3 arg5P)) (= arg6P arg7P)) (= 0 arg8P)) (= 0 arg9P)) (= 0 arg10P)) (= arg3 arg15P)) (= arg4 arg16P)) (= arg4 arg17P)) (= arg5 arg19P)) (= arg6 arg22P)) (= arg7 arg23P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1973_0__init__GE (exists ((x36 Int)) (and (and (and (and (and (and (and (> arg18P (- 1)) (> arg2 0)) (> x36 (- 1))) (> arg1 0)) (> arg1P 8)) (> arg2P 8)) (> arg3P 6)) (= 0 arg13P))))
    (cfg_trans2 pc f399_0_createList_Return pc1 f1973_0__init__GE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg1 6) (> arg6 (- 1))) (> arg1P 8)) (> arg2P 8)) (> arg3P 6)) (<= (+ arg4 7) arg1)) (<= (+ arg5 7) arg1)) (<= (+ arg7 3) arg1)) (<= (+ arg6 5) arg1)) (= arg2 arg5P)) (= arg3 arg6P)) (= 0 arg13P)) (= arg6 arg18P)) (= arg7 arg19P)))
    (cfg_trans2 pc f1973_0__init__GE pc1 f2251_0__init__LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg1 8) (< arg4 1)) (> arg2 8)) (> arg3 6)) (> arg1P 8)) (> arg2P 8)) (<= (+ arg7 9) arg1)) (<= (+ arg8 9) arg1)) (<= (+ arg18 7) arg1)) (<= (+ arg19 5) arg1)) (<= (+ arg9 4) arg1)) (<= (+ arg10 4) arg1)) (<= (+ arg11 9) arg2)) (<= (+ arg12 9) arg2)) (<= (+ arg18 7) arg2)) (<= (+ arg19 5) arg2)) (<= (+ arg14 4) arg2)) (<= (+ arg15 4) arg2)) (<= (+ arg16 7) arg3)) (<= (+ arg17 7) arg3)) (<= (+ arg19 3) arg3)) (<= (+ arg18 5) arg3)) (= 0 arg13)) (= arg6 arg3P)) (= arg5 arg4P)) (= arg6 arg5P)) (= arg6 arg6P)) (= arg6 arg7P)) (= arg18 arg10P)) (= arg18 arg11P)) (= arg18 arg16P)) (= arg18 arg17P)) (= arg19 arg18P)))
    (cfg_trans2 pc f2251_0__init__LE pc1 f2251_0__init__LE (exists ((x117 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg6 0) (> arg3 0)) (> arg7 0)) (> arg11 0)) (< arg3 arg3P)) (> arg4 0)) (> arg5 arg3)) (> arg5 0)) (> arg6 arg6P)) (< x117 arg7P)) (> arg7 x117)) (> x117 (- 1))) (< x117 arg6P)) (> arg1 8)) (> arg2 8)) (> arg1P 8)) (> arg2P 8)) (<= (+ arg8 9) arg1)) (<= (+ arg9 9) arg1)) (<= (+ arg10 7) arg1)) (<= (+ arg18 5) arg1)) (<= (+ arg11 2) arg1)) (<= (+ arg12 4) arg1)) (<= (+ arg13 4) arg1)) (>= arg2 (+ arg14 9))) (>= arg2 (+ arg15 9))) (<= (+ arg10 7) arg2)) (<= (+ arg18 5) arg2)) (<= (+ arg11 2) arg2)) (>= arg2 (+ arg20 4))) (>= arg2 (+ arg19 4))) (= arg10 arg16)) (= arg11 arg17)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg10 arg10P)) (= (- arg11 1) arg11P)) (= arg10 arg16P)) (= (- arg11 1) arg17P)) (= arg18 arg18P))))
    (cfg_trans2 pc f2251_0__init__LE pc1 f2251_0__init__LE (exists ((x146 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg11 0)) (< x146 arg4)) (< arg6P arg5)) (> arg5 (- 1))) (> x146 0)) (> arg6P 0)) (> arg1 8)) (> arg2 8)) (> arg1P 8)) (> arg2P 8)) (<= (+ arg8 9) arg1)) (<= (+ arg9 9) arg1)) (<= (+ arg10 7) arg1)) (<= (+ arg18 5) arg1)) (<= (+ arg11 2) arg1)) (<= (+ arg12 4) arg1)) (<= (+ arg13 4) arg1)) (<= (+ arg14 9) arg2)) (<= (+ arg15 9) arg2)) (<= (+ arg10 7) arg2)) (<= (+ arg18 5) arg2)) (<= (+ arg11 2) arg2)) (<= (+ arg20 4) arg2)) (<= (+ arg19 4) arg2)) (= arg5 arg7)) (= arg10 arg16)) (= arg11 arg17)) (= 1 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= 0 arg7P)) (= arg10 arg10P)) (= (- arg11 1) arg11P)) (= arg10 arg16P)) (= (- arg11 1) arg17P)) (= arg18 arg18P))))
    (cfg_trans2 pc f2251_0__init__LE pc1 f2251_0__init__LE (exists ((x175 Int) (x176 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg11 0)) (< x175 arg4)) (< x176 arg5)) (> arg5 (- 1))) (> x175 0)) (> arg1 8)) (> arg2 8)) (> arg1P 8)) (> arg2P 8)) (<= (+ arg8 9) arg1)) (<= (+ arg9 9) arg1)) (<= (+ arg10 7) arg1)) (<= (+ arg18 5) arg1)) (<= (+ arg11 2) arg1)) (<= (+ arg12 4) arg1)) (<= (+ arg13 4) arg1)) (<= (+ arg14 9) arg2)) (<= (+ arg15 9) arg2)) (<= (+ arg10 7) arg2)) (<= (+ arg18 5) arg2)) (<= (+ arg11 2) arg2)) (<= (+ arg20 4) arg2)) (<= (+ arg19 4) arg2)) (= arg5 arg7)) (= arg10 arg16)) (= arg11 arg17)) (= 1 arg3P)) (= 1 arg5P)) (= 1 arg6P)) (= 1 arg7P)) (= arg10 arg10P)) (= (- arg11 1) arg11P)) (= arg10 arg16P)) (= (- arg11 1) arg17P)) (= arg18 arg18P))))
    (cfg_trans2 pc f2251_0__init__LE pc1 f2251_0__init__LE (exists ((x206 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg11 0)) (< x206 arg4)) (< arg6P arg5)) (> arg5 (- 1))) (> arg6P 0)) (> arg1 8)) (> arg2 8)) (> arg1P 8)) (> arg2P 8)) (<= (+ arg8 9) arg1)) (<= (+ arg9 9) arg1)) (<= (+ arg10 7) arg1)) (<= (+ arg18 5) arg1)) (<= (+ arg11 2) arg1)) (<= (+ arg12 4) arg1)) (<= (+ arg13 4) arg1)) (<= (+ arg14 9) arg2)) (<= (+ arg15 9) arg2)) (<= (+ arg10 7) arg2)) (<= (+ arg18 5) arg2)) (<= (+ arg11 2) arg2)) (<= (+ arg20 4) arg2)) (<= (+ arg19 4) arg2)) (= arg5 arg7)) (= arg10 arg16)) (= arg11 arg17)) (= 1 arg3P)) (= 1 arg4P)) (= 0 arg7P)) (= arg10 arg10P)) (= (- arg11 1) arg11P)) (= arg10 arg16P)) (= (- arg11 1) arg17P)) (= arg18 arg18P))))
    (cfg_trans2 pc f2251_0__init__LE pc1 f2251_0__init__LE (exists ((x234 Int) (x235 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg11 0)) (< x234 arg4)) (< x235 arg5)) (> arg5 (- 1))) (> arg1 8)) (> arg2 8)) (> arg1P 8)) (> arg2P 8)) (<= (+ arg8 9) arg1)) (<= (+ arg9 9) arg1)) (<= (+ arg10 7) arg1)) (<= (+ arg18 5) arg1)) (<= (+ arg11 2) arg1)) (<= (+ arg12 4) arg1)) (<= (+ arg13 4) arg1)) (<= (+ arg14 9) arg2)) (<= (+ arg15 9) arg2)) (<= (+ arg10 7) arg2)) (<= (+ arg18 5) arg2)) (<= (+ arg11 2) arg2)) (<= (+ arg20 4) arg2)) (<= (+ arg19 4) arg2)) (= arg5 arg7)) (= arg10 arg16)) (= arg11 arg17)) (= 1 arg3P)) (= 1 arg4P)) (= 1 arg5P)) (= 1 arg6P)) (= 1 arg7P)) (= arg10 arg10P)) (= (- arg11 1) arg11P)) (= arg10 arg16P)) (= (- arg11 1) arg17P)) (= arg18 arg18P))))
    (cfg_trans2 pc f1973_0__init__GE pc1 f2679_0_hasNext_EQ (exists ((x491 Int) (x492 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 0)) (< x491 arg5)) (< x492 arg6)) (> x492 0)) (> arg6 (- 1))) (> arg1 8)) (> arg2 8)) (> arg3 6)) (> arg1P 8)) (<= (+ arg7 9) arg1)) (<= (+ arg8 9) arg1)) (<= (+ arg18 7) arg1)) (<= (+ arg19 5) arg1)) (<= (+ arg9 4) arg1)) (<= (+ arg10 4) arg1)) (<= (+ arg11 9) arg2)) (<= (+ arg12 9) arg2)) (<= (+ arg18 7) arg2)) (<= (+ arg19 5) arg2)) (<= (+ arg14 4) arg2)) (<= (+ arg15 4) arg2)) (<= (+ arg16 7) arg3)) (<= (+ arg17 7) arg3)) (<= (+ arg19 3) arg3)) (<= (+ arg18 5) arg3)) (= 0 arg13)) (= arg18 arg2P)) (= 0 arg3P)) (= arg19 arg4P))))
    (cfg_trans2 pc f1973_0__init__GE pc1 f2679_0_hasNext_EQ (exists ((x515 Int) (x516 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 0)) (< x515 arg5)) (> arg6 (- 1))) (< x516 arg6)) (> arg1 8)) (> arg2 8)) (> arg3 6)) (> arg1P 8)) (<= (+ arg7 9) arg1)) (<= (+ arg8 9) arg1)) (<= (+ arg18 7) arg1)) (<= (+ arg19 5) arg1)) (<= (+ arg9 4) arg1)) (<= (+ arg10 4) arg1)) (<= (+ arg11 9) arg2)) (<= (+ arg12 9) arg2)) (<= (+ arg18 7) arg2)) (<= (+ arg19 5) arg2)) (<= (+ arg14 4) arg2)) (<= (+ arg15 4) arg2)) (<= (+ arg16 7) arg3)) (<= (+ arg17 7) arg3)) (<= (+ arg19 3) arg3)) (<= (+ arg18 5) arg3)) (= 0 arg13)) (= arg18 arg2P)) (= 0 arg3P)) (= arg19 arg4P))))
    (cfg_trans2 pc f2251_0__init__LE pc1 f2679_0_hasNext_EQ (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg1 8) (> arg2 8)) (> arg1P 8)) (<= (+ arg8 9) arg1)) (<= (+ arg9 9) arg1)) (<= (+ arg10 7) arg1)) (<= (+ arg18 5) arg1)) (<= (+ arg12 4) arg1)) (<= (+ arg13 4) arg1)) (<= (+ arg14 9) arg2)) (<= (+ arg15 9) arg2)) (<= (+ arg10 7) arg2)) (<= (+ arg18 5) arg2)) (<= (+ arg20 4) arg2)) (<= (+ arg19 4) arg2)) (= 0 arg11)) (= arg10 arg16)) (= 0 arg17)) (= arg10 arg2P)) (= 0 arg3P)) (= arg18 arg4P)))
    (cfg_trans2 pc f1973_0__init__GE pc1 f2679_0_hasNext_EQ (exists ((x562 Int) (x563 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 0)) (< x562 arg5)) (< x563 arg6)) (> arg6 (- 1))) (> x563 0)) (> x562 0)) (> arg1 8)) (> arg2 8)) (> arg3 6)) (> arg1P 9)) (<= (+ arg7 9) arg1)) (<= (+ arg8 9) arg1)) (<= (+ arg18 7) arg1)) (<= (+ arg19 5) arg1)) (<= (+ arg9 4) arg1)) (<= (+ arg10 4) arg1)) (<= (+ arg11 9) arg2)) (<= (+ arg12 9) arg2)) (<= (+ arg18 7) arg2)) (<= (+ arg19 5) arg2)) (<= (+ arg14 4) arg2)) (<= (+ arg15 4) arg2)) (<= (+ arg16 7) arg3)) (<= (+ arg17 7) arg3)) (<= (+ arg19 3) arg3)) (<= (+ arg18 5) arg3)) (= 0 arg13)) (= arg18 arg2P)) (= 0 arg3P)) (= arg19 arg4P))))
    (cfg_trans2 pc f1973_0__init__GE pc1 f2679_0_hasNext_EQ (exists ((x586 Int) (x587 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 0)) (< x586 arg5)) (< x587 arg6)) (> x586 0)) (> arg6 (- 1))) (> arg1 8)) (> arg2 8)) (> arg3 6)) (> arg1P 9)) (<= (+ arg7 9) arg1)) (<= (+ arg8 9) arg1)) (<= (+ arg18 7) arg1)) (<= (+ arg19 5) arg1)) (<= (+ arg9 4) arg1)) (<= (+ arg10 4) arg1)) (<= (+ arg11 9) arg2)) (<= (+ arg12 9) arg2)) (<= (+ arg18 7) arg2)) (<= (+ arg19 5) arg2)) (<= (+ arg14 4) arg2)) (<= (+ arg15 4) arg2)) (<= (+ arg16 7) arg3)) (<= (+ arg17 7) arg3)) (<= (+ arg19 3) arg3)) (<= (+ arg18 5) arg3)) (= 0 arg13)) (= arg18 arg2P)) (= 0 arg3P)) (= arg19 arg4P))))
    (cfg_trans2 pc f2679_0_hasNext_EQ pc1 f2679_0_hasNext_EQ (and (and (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (> arg2 arg3)) (> arg1 7)) (> arg1P 7)) (<= (+ arg2 7) arg1)) (<= (+ arg4 5) arg1)) (<= (+ arg3 2) arg1)) (<= (+ arg6 4) arg1)) (<= (+ arg5 4) arg1)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f381_0_createList_Load (and (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (<= (- arg2P 7) arg1)) (> arg1 0)) (> arg2P 7)) (= 1 arg5P)) (= 0 arg6P)) (= 0 arg7P)))
    (cfg_trans2 pc f760_0_createList_Load pc1 f1782_0_createList_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 11) (> arg1P 11)) (<= (+ arg20 9) arg2)) (<= (+ arg21 9) arg2)) (<= (+ arg23 3) arg2)) (<= (+ arg22 5) arg2)) (= arg1 arg2P)) (= arg13 arg3P)) (= arg11 arg4P)) (= arg7 arg5P)) (= arg12 arg6P)) (= arg6 arg7P)) (= arg3 arg9P)) (= arg14 arg10P)) (= arg5 arg11P)) (= 0 arg12P)) (= arg4 arg13P)) (= arg8 arg14P)) (= arg9 arg15P)) (= arg10 arg16P)) (= arg15 arg17P)) (= arg16 arg18P)) (= arg17 arg19P)) (= arg19 arg20P)) (= arg22 arg24P)) (= arg23 arg25P)))
    (cfg_trans2 pc f1782_0_createList_LE pc1 f1782_0_createList_LE (exists ((x391 Int) (x432 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 0) (> x391 (- 1))) (> arg6 0)) (> arg3 0)) (> arg20 (- 1))) (< arg20 x391)) (> arg10 0)) (> arg4 0)) (> arg13 0)) (> arg11 0)) (> arg12 0)) (> x432 (- 1))) (> arg9 0)) (> arg5 0)) (> arg19 0)) (> arg14 0)) (> arg18 0)) (> arg17 0)) (> arg15 0)) (> arg16 0)) (> arg25 (- 1))) (> arg24 (- 1))) (> arg1 9)) (> arg1P 9)) (<= (+ arg21 9) arg1)) (<= (+ arg22 9) arg1)) (<= (+ arg23 9) arg1)) (<= (+ arg25 3) arg1)) (<= (+ arg24 5) arg1)) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= arg6 arg6P)) (= arg7 arg7P)) (= arg8 arg8P)) (= arg10 arg10P)) (= arg12 arg12P)) (= (+ arg20 1) arg20P)) (= (+ arg24 1) arg24P)) (= (+ arg25 1) arg25P))))
    (cfg_trans2 pc f1782_0_createList_LE pc1 f1782_0_createList_LE (exists ((x433 Int) (x468 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 0) (> x433 (- 1))) (> arg6 0)) (> arg3 0)) (> arg20 (- 1))) (< arg20 x433)) (> arg10 0)) (> arg12 0)) (> x468 (- 1))) (> arg19 0)) (> arg18 0)) (> arg17 0)) (> arg8 0)) (> arg25 (- 1))) (> arg24 (- 1))) (> arg1 11)) (> arg1P 13)) (<= (+ arg21 9) arg1)) (<= (+ arg22 9) arg1)) (<= (+ arg23 9) arg1)) (<= (+ arg25 3) arg1)) (<= (+ arg24 5) arg1)) (= arg8 arg9)) (= arg10 arg11)) (= arg12 arg13)) (= arg7 arg16)) (= (- arg2 1) arg2P)) (= 0 arg3P)) (= 1 arg4P)) (= 1 arg5P)) (= arg8 arg8P)) (= arg10 arg10P)) (= arg12 arg12P)) (= 0 arg13P)) (= 2 arg15P)) (= (+ arg20 1) arg20P)) (= (+ arg24 1) arg24P)) (= (+ arg25 1) arg25P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
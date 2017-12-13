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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12))

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

(define-fun init_main ( (pc^0 Loc) (___rho_1_^0 Int) (a33^0 Int) (a55^0 Int) (a88^0 Int) (curtime^0 Int) (got_SIGHUP^0 Int) (last_copy_time^0 Int) (ret_XLogArchivingActive44^0 Int) (ret_time1010^0 Int) (ret_time77^0 Int) (tmp2^0 Int) (tmp66^0 Int) (tmp99^0 Int) (tt1^0 Int) (wakend^0 Int) ) Bool
  (cfg_init pc^0 l12 true))

(define-fun next_main (
                 (pc^0 Loc) (___rho_1_^0 Int) (a33^0 Int) (a55^0 Int) (a88^0 Int) (curtime^0 Int) (got_SIGHUP^0 Int) (last_copy_time^0 Int) (ret_XLogArchivingActive44^0 Int) (ret_time1010^0 Int) (ret_time77^0 Int) (tmp2^0 Int) (tmp66^0 Int) (tmp99^0 Int) (tt1^0 Int) (wakend^0 Int)
                 (pc^post Loc) (___rho_1_^post Int) (a33^post Int) (a55^post Int) (a88^post Int) (curtime^post Int) (got_SIGHUP^post Int) (last_copy_time^post Int) (ret_XLogArchivingActive44^post Int) (ret_time1010^post Int) (ret_time77^post Int) (tmp2^post Int) (tmp66^post Int) (tmp99^post Int) (tt1^post Int) (wakend^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 got_SIGHUP^0) 0) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 got_SIGHUP^0)) (= got_SIGHUP^post 0)) (= a33^post 1)) (= ___rho_1_^post ___rho_1_^post)) (= ret_XLogArchivingActive44^post (+ 0 ___rho_1_^post))) (= tmp2^post (+ 0 ret_XLogArchivingActive44^post))) (= tt1^post (+ 0 tmp2^post))) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l7 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ (+ 1 curtime^0) (* -1 last_copy_time^0)) 1000) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1000 (+ (+ 0 curtime^0) (* -1 last_copy_time^0))) (= wakend^post 1)) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 wakend^0)) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wakend^0) 0) (= a88^post 0)) (= tmp99^post tmp99^post)) (= ret_time1010^post (+ 0 tmp99^post))) (= curtime^post (+ 0 ret_time1010^post))) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l1 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wakend^0) 0) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l1 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 wakend^0)) (= wakend^post 0)) (= a55^post 0)) (= tmp66^post tmp66^post)) (= ret_time77^post (+ 0 tmp66^post))) (= last_copy_time^post (+ 0 ret_time77^post))) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= tmp2^0 tmp2^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)))
    (cfg_trans2 pc^0 l6 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l10 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 tt1^0)) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l2 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 tt1^0) 0) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l11 pc^post l0 (exists ( (wakend^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= wakend^1 1) (= got_SIGHUP^post got_SIGHUP^post)) (= wakend^post 1)) (= ___rho_1_^0 ___rho_1_^post)) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post))))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= a33^0 a33^post)) (= a55^0 a55^post)) (= a88^0 a88^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= ret_XLogArchivingActive44^0 ret_XLogArchivingActive44^post)) (= ret_time1010^0 ret_time1010^post)) (= ret_time77^0 ret_time77^post)) (= tmp2^0 tmp2^post)) (= tmp66^0 tmp66^post)) (= tmp99^0 tmp99^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
  )
)

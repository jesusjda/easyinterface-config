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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24 l25 l26))

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

(define-fun init_main ( (pc^0 Loc) (c1^0 Int) (c2^0 Int) (h1i^0 Int) (h1r^0 Int) (h2i^0 Int) (h2r^0 Int) (i1^0 Int) (i2^0 Int) (i3^0 Int) (ii3^0 Int) (isign^0 Int) (j1___0^0 Int) (j2^0 Int) (j3^0 Int) (nn1^0 Int) (nn2^0 Int) (theta^0 Int) (wi^0 Int) (wpi^0 Int) (wpr^0 Int) (wr^0 Int) (wtemp^0 Int) ) Bool
  (cfg_init pc^0 l26 true))

(define-fun next_main (
                 (pc^0 Loc) (c1^0 Int) (c2^0 Int) (h1i^0 Int) (h1r^0 Int) (h2i^0 Int) (h2r^0 Int) (i1^0 Int) (i2^0 Int) (i3^0 Int) (ii3^0 Int) (isign^0 Int) (j1___0^0 Int) (j2^0 Int) (j3^0 Int) (nn1^0 Int) (nn2^0 Int) (theta^0 Int) (wi^0 Int) (wpi^0 Int) (wpr^0 Int) (wr^0 Int) (wtemp^0 Int)
                 (pc^post Loc) (c1^post Int) (c2^post Int) (h1i^post Int) (h1r^post Int) (h2i^post Int) (h2r^post Int) (i1^post Int) (i2^post Int) (i3^post Int) (ii3^post Int) (isign^post Int) (j1___0^post Int) (j2^post Int) (j3^post Int) (nn1^post Int) (nn2^post Int) (theta^post Int) (wi^post Int) (wpi^post Int) (wpr^post Int) (wr^post Int) (wtemp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 isign^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 isign^0) -1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 isign^0) -1) (<= -1 (+ 0 isign^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= j3^post j3^post) (= h1r^post h1r^post)) (= h1i^post h1i^post)) (= h2i^post h2i^post)) (= h2r^post h2r^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l7 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= j2^post (+ (+ 2 (* -1 i2^0)) nn2^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l8 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i2^0) 1) (<= 1 (+ 0 i2^0))) (= j2^post 1)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 i2^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 i2^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l6 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= i2^post (+ 1 i2^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l12 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= h1r^post h1r^post) (= h1i^post h1i^post)) (= h2i^post h2i^post)) (= h2r^post h2r^post)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l13 pc^post l12 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= j2^post j2^post) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l14 pc^post l12 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i2^0) 1) (<= 1 (+ 0 i2^0))) (= j2^post 1)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l14 pc^post l13 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 i2^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l14 pc^post l13 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 i2^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l15 pc^post l16 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l17 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 i3^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l17 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 i3^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l17 pc^post l14 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i3^0) 1) (<= 1 (+ 0 i3^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l18 pc^post l19 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nn2^0) (+ 0 i2^0)) (= wtemp^post (+ 0 wr^0))) (= wr^post wr^post)) (= wi^post wi^post)) (= i3^post (+ 1 i3^0))) (= ii3^post (+ 2 ii3^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)))
    (cfg_trans2 pc^0 l18 pc^post l17 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i2^0) (+ 0 nn2^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l20 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= i1^post (+ 1 i1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l20 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l21 pc^post l19 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= wr^post 1) (= wi^post 0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l22 pc^post l21 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= j1___0^post (+ (+ 2 (* -1 i1^0)) nn1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l19 pc^post l20 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l23 pc^post l21 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i1^0) 1) (<= 1 (+ 0 i1^0))) (= j1___0^post 1)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l23 pc^post l22 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 i1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l23 pc^post l22 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 i1^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l16 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nn1^0) (+ 0 i1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l16 pc^post l23 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i1^0) (+ 0 nn1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l9 pc^post l18 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l11 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nn2^0) (+ 0 i2^0)) (= i1^post (+ 1 i1^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (exists ( (j2^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i2^0) (+ 0 nn2^0)) (= j2^1 (+ 1 j2^0))) (= j2^post (+ 1 j2^1))) (= i2^post (+ 1 i2^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post))))
    (cfg_trans2 pc^0 l4 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nn1^0) (+ 0 i1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l4 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i1^0) (+ 0 nn1^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l24 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 isign^0)) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l24 pc^post l15 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 isign^0) 1) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l24 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 isign^0) 1) (<= 1 (+ 0 isign^0))) (= c1^0 c1^post)) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
    (cfg_trans2 pc^0 l25 pc^post l24 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^post c1^post) (= c2^post c2^post)) (= theta^post theta^post)) (= wtemp^post wtemp^post)) (= wpr^post wpr^post)) (= wpi^post wpi^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= wi^0 wi^post)) (= wr^0 wr^post)))
    (cfg_trans2 pc^0 l26 pc^post l25 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= h1i^0 h1i^post)) (= h1r^0 h1r^post)) (= h2i^0 h2i^post)) (= h2r^0 h2r^post)) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= ii3^0 ii3^post)) (= isign^0 isign^post)) (= j1___0^0 j1___0^post)) (= j2^0 j2^post)) (= j3^0 j3^post)) (= nn1^0 nn1^post)) (= nn2^0 nn2^post)) (= theta^0 theta^post)) (= wi^0 wi^post)) (= wpi^0 wpi^post)) (= wpr^0 wpr^post)) (= wr^0 wr^post)) (= wtemp^0 wtemp^post)))
  )
)

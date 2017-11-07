%--------------------------------------------------------------------------
% File     : ALG104+1 : TPTP v7.0.0. Released v2.7.0.
% Domain   : General Algebra
% Problem  : Quasigroups 4: PROP-ISO-COMPLETE-102
% Version  : Especial.
% English  :

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    :

% Status   : Theorem
% Rating   : 0.64 v7.0.0, 0.53 v6.4.0, 0.57 v6.2.0, 0.55 v6.1.0, 0.58 v5.5.0, 0.78 v5.4.0, 0.89 v5.3.0, 0.64 v5.2.0, 0.50 v5.0.0, 0.25 v4.1.0, 0.82 v4.0.1, 0.80 v4.0.0, 0.78 v3.7.0, 0.71 v3.5.0, 0.78 v3.4.0, 0.83 v3.3.0, 0.78 v3.2.0, 0.89 v2.7.0
% Syntax   : Number of formulae    :   18 (   0 unit)
%            Number of atoms       :  914 ( 914 equality)
%            Maximal formula depth :   49 (  18 average)
%            Number of connectives : 1212 ( 316   ~; 399   |; 497   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :   14 (   8 constant; 0-2 arity)
%            Number of variables   :    0 (   0 sgn;   0   !;   0   ?)
%            Maximal term depth    :    4 (   2 average)
% SPC      : FOF_THM_RFO_PEQ

% Comments :
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ( op1(e10,e10) = e10
      | op1(e10,e10) = e11
      | op1(e10,e10) = e12
      | op1(e10,e10) = e13 )
    & ( op1(e10,e11) = e10
      | op1(e10,e11) = e11
      | op1(e10,e11) = e12
      | op1(e10,e11) = e13 )
    & ( op1(e10,e12) = e10
      | op1(e10,e12) = e11
      | op1(e10,e12) = e12
      | op1(e10,e12) = e13 )
    & ( op1(e10,e13) = e10
      | op1(e10,e13) = e11
      | op1(e10,e13) = e12
      | op1(e10,e13) = e13 )
    & ( op1(e11,e10) = e10
      | op1(e11,e10) = e11
      | op1(e11,e10) = e12
      | op1(e11,e10) = e13 )
    & ( op1(e11,e11) = e10
      | op1(e11,e11) = e11
      | op1(e11,e11) = e12
      | op1(e11,e11) = e13 )
    & ( op1(e11,e12) = e10
      | op1(e11,e12) = e11
      | op1(e11,e12) = e12
      | op1(e11,e12) = e13 )
    & ( op1(e11,e13) = e10
      | op1(e11,e13) = e11
      | op1(e11,e13) = e12
      | op1(e11,e13) = e13 )
    & ( op1(e12,e10) = e10
      | op1(e12,e10) = e11
      | op1(e12,e10) = e12
      | op1(e12,e10) = e13 )
    & ( op1(e12,e11) = e10
      | op1(e12,e11) = e11
      | op1(e12,e11) = e12
      | op1(e12,e11) = e13 )
    & ( op1(e12,e12) = e10
      | op1(e12,e12) = e11
      | op1(e12,e12) = e12
      | op1(e12,e12) = e13 )
    & ( op1(e12,e13) = e10
      | op1(e12,e13) = e11
      | op1(e12,e13) = e12
      | op1(e12,e13) = e13 )
    & ( op1(e13,e10) = e10
      | op1(e13,e10) = e11
      | op1(e13,e10) = e12
      | op1(e13,e10) = e13 )
    & ( op1(e13,e11) = e10
      | op1(e13,e11) = e11
      | op1(e13,e11) = e12
      | op1(e13,e11) = e13 )
    & ( op1(e13,e12) = e10
      | op1(e13,e12) = e11
      | op1(e13,e12) = e12
      | op1(e13,e12) = e13 )
    & ( op1(e13,e13) = e10
      | op1(e13,e13) = e11
      | op1(e13,e13) = e12
      | op1(e13,e13) = e13 ) )).

fof(ax2,axiom,
    ( ( op1(e10,e10) = e10
      | op1(e10,e11) = e10
      | op1(e10,e12) = e10
      | op1(e10,e13) = e10 )
    & ( op1(e10,e10) = e10
      | op1(e11,e10) = e10
      | op1(e12,e10) = e10
      | op1(e13,e10) = e10 )
    & ( op1(e10,e10) = e11
      | op1(e10,e11) = e11
      | op1(e10,e12) = e11
      | op1(e10,e13) = e11 )
    & ( op1(e10,e10) = e11
      | op1(e11,e10) = e11
      | op1(e12,e10) = e11
      | op1(e13,e10) = e11 )
    & ( op1(e10,e10) = e12
      | op1(e10,e11) = e12
      | op1(e10,e12) = e12
      | op1(e10,e13) = e12 )
    & ( op1(e10,e10) = e12
      | op1(e11,e10) = e12
      | op1(e12,e10) = e12
      | op1(e13,e10) = e12 )
    & ( op1(e10,e10) = e13
      | op1(e10,e11) = e13
      | op1(e10,e12) = e13
      | op1(e10,e13) = e13 )
    & ( op1(e10,e10) = e13
      | op1(e11,e10) = e13
      | op1(e12,e10) = e13
      | op1(e13,e10) = e13 )
    & ( op1(e11,e10) = e10
      | op1(e11,e11) = e10
      | op1(e11,e12) = e10
      | op1(e11,e13) = e10 )
    & ( op1(e10,e11) = e10
      | op1(e11,e11) = e10
      | op1(e12,e11) = e10
      | op1(e13,e11) = e10 )
    & ( op1(e11,e10) = e11
      | op1(e11,e11) = e11
      | op1(e11,e12) = e11
      | op1(e11,e13) = e11 )
    & ( op1(e10,e11) = e11
      | op1(e11,e11) = e11
      | op1(e12,e11) = e11
      | op1(e13,e11) = e11 )
    & ( op1(e11,e10) = e12
      | op1(e11,e11) = e12
      | op1(e11,e12) = e12
      | op1(e11,e13) = e12 )
    & ( op1(e10,e11) = e12
      | op1(e11,e11) = e12
      | op1(e12,e11) = e12
      | op1(e13,e11) = e12 )
    & ( op1(e11,e10) = e13
      | op1(e11,e11) = e13
      | op1(e11,e12) = e13
      | op1(e11,e13) = e13 )
    & ( op1(e10,e11) = e13
      | op1(e11,e11) = e13
      | op1(e12,e11) = e13
      | op1(e13,e11) = e13 )
    & ( op1(e12,e10) = e10
      | op1(e12,e11) = e10
      | op1(e12,e12) = e10
      | op1(e12,e13) = e10 )
    & ( op1(e10,e12) = e10
      | op1(e11,e12) = e10
      | op1(e12,e12) = e10
      | op1(e13,e12) = e10 )
    & ( op1(e12,e10) = e11
      | op1(e12,e11) = e11
      | op1(e12,e12) = e11
      | op1(e12,e13) = e11 )
    & ( op1(e10,e12) = e11
      | op1(e11,e12) = e11
      | op1(e12,e12) = e11
      | op1(e13,e12) = e11 )
    & ( op1(e12,e10) = e12
      | op1(e12,e11) = e12
      | op1(e12,e12) = e12
      | op1(e12,e13) = e12 )
    & ( op1(e10,e12) = e12
      | op1(e11,e12) = e12
      | op1(e12,e12) = e12
      | op1(e13,e12) = e12 )
    & ( op1(e12,e10) = e13
      | op1(e12,e11) = e13
      | op1(e12,e12) = e13
      | op1(e12,e13) = e13 )
    & ( op1(e10,e12) = e13
      | op1(e11,e12) = e13
      | op1(e12,e12) = e13
      | op1(e13,e12) = e13 )
    & ( op1(e13,e10) = e10
      | op1(e13,e11) = e10
      | op1(e13,e12) = e10
      | op1(e13,e13) = e10 )
    & ( op1(e10,e13) = e10
      | op1(e11,e13) = e10
      | op1(e12,e13) = e10
      | op1(e13,e13) = e10 )
    & ( op1(e13,e10) = e11
      | op1(e13,e11) = e11
      | op1(e13,e12) = e11
      | op1(e13,e13) = e11 )
    & ( op1(e10,e13) = e11
      | op1(e11,e13) = e11
      | op1(e12,e13) = e11
      | op1(e13,e13) = e11 )
    & ( op1(e13,e10) = e12
      | op1(e13,e11) = e12
      | op1(e13,e12) = e12
      | op1(e13,e13) = e12 )
    & ( op1(e10,e13) = e12
      | op1(e11,e13) = e12
      | op1(e12,e13) = e12
      | op1(e13,e13) = e12 )
    & ( op1(e13,e10) = e13
      | op1(e13,e11) = e13
      | op1(e13,e12) = e13
      | op1(e13,e13) = e13 )
    & ( op1(e10,e13) = e13
      | op1(e11,e13) = e13
      | op1(e12,e13) = e13
      | op1(e13,e13) = e13 ) )).

fof(ax3,axiom,
    ( ( op2(e20,e20) = e20
      | op2(e20,e20) = e21
      | op2(e20,e20) = e22
      | op2(e20,e20) = e23 )
    & ( op2(e20,e21) = e20
      | op2(e20,e21) = e21
      | op2(e20,e21) = e22
      | op2(e20,e21) = e23 )
    & ( op2(e20,e22) = e20
      | op2(e20,e22) = e21
      | op2(e20,e22) = e22
      | op2(e20,e22) = e23 )
    & ( op2(e20,e23) = e20
      | op2(e20,e23) = e21
      | op2(e20,e23) = e22
      | op2(e20,e23) = e23 )
    & ( op2(e21,e20) = e20
      | op2(e21,e20) = e21
      | op2(e21,e20) = e22
      | op2(e21,e20) = e23 )
    & ( op2(e21,e21) = e20
      | op2(e21,e21) = e21
      | op2(e21,e21) = e22
      | op2(e21,e21) = e23 )
    & ( op2(e21,e22) = e20
      | op2(e21,e22) = e21
      | op2(e21,e22) = e22
      | op2(e21,e22) = e23 )
    & ( op2(e21,e23) = e20
      | op2(e21,e23) = e21
      | op2(e21,e23) = e22
      | op2(e21,e23) = e23 )
    & ( op2(e22,e20) = e20
      | op2(e22,e20) = e21
      | op2(e22,e20) = e22
      | op2(e22,e20) = e23 )
    & ( op2(e22,e21) = e20
      | op2(e22,e21) = e21
      | op2(e22,e21) = e22
      | op2(e22,e21) = e23 )
    & ( op2(e22,e22) = e20
      | op2(e22,e22) = e21
      | op2(e22,e22) = e22
      | op2(e22,e22) = e23 )
    & ( op2(e22,e23) = e20
      | op2(e22,e23) = e21
      | op2(e22,e23) = e22
      | op2(e22,e23) = e23 )
    & ( op2(e23,e20) = e20
      | op2(e23,e20) = e21
      | op2(e23,e20) = e22
      | op2(e23,e20) = e23 )
    & ( op2(e23,e21) = e20
      | op2(e23,e21) = e21
      | op2(e23,e21) = e22
      | op2(e23,e21) = e23 )
    & ( op2(e23,e22) = e20
      | op2(e23,e22) = e21
      | op2(e23,e22) = e22
      | op2(e23,e22) = e23 )
    & ( op2(e23,e23) = e20
      | op2(e23,e23) = e21
      | op2(e23,e23) = e22
      | op2(e23,e23) = e23 ) )).

fof(ax4,axiom,
    ( ( op2(e20,e20) = e20
      | op2(e20,e21) = e20
      | op2(e20,e22) = e20
      | op2(e20,e23) = e20 )
    & ( op2(e20,e20) = e20
      | op2(e21,e20) = e20
      | op2(e22,e20) = e20
      | op2(e23,e20) = e20 )
    & ( op2(e20,e20) = e21
      | op2(e20,e21) = e21
      | op2(e20,e22) = e21
      | op2(e20,e23) = e21 )
    & ( op2(e20,e20) = e21
      | op2(e21,e20) = e21
      | op2(e22,e20) = e21
      | op2(e23,e20) = e21 )
    & ( op2(e20,e20) = e22
      | op2(e20,e21) = e22
      | op2(e20,e22) = e22
      | op2(e20,e23) = e22 )
    & ( op2(e20,e20) = e22
      | op2(e21,e20) = e22
      | op2(e22,e20) = e22
      | op2(e23,e20) = e22 )
    & ( op2(e20,e20) = e23
      | op2(e20,e21) = e23
      | op2(e20,e22) = e23
      | op2(e20,e23) = e23 )
    & ( op2(e20,e20) = e23
      | op2(e21,e20) = e23
      | op2(e22,e20) = e23
      | op2(e23,e20) = e23 )
    & ( op2(e21,e20) = e20
      | op2(e21,e21) = e20
      | op2(e21,e22) = e20
      | op2(e21,e23) = e20 )
    & ( op2(e20,e21) = e20
      | op2(e21,e21) = e20
      | op2(e22,e21) = e20
      | op2(e23,e21) = e20 )
    & ( op2(e21,e20) = e21
      | op2(e21,e21) = e21
      | op2(e21,e22) = e21
      | op2(e21,e23) = e21 )
    & ( op2(e20,e21) = e21
      | op2(e21,e21) = e21
      | op2(e22,e21) = e21
      | op2(e23,e21) = e21 )
    & ( op2(e21,e20) = e22
      | op2(e21,e21) = e22
      | op2(e21,e22) = e22
      | op2(e21,e23) = e22 )
    & ( op2(e20,e21) = e22
      | op2(e21,e21) = e22
      | op2(e22,e21) = e22
      | op2(e23,e21) = e22 )
    & ( op2(e21,e20) = e23
      | op2(e21,e21) = e23
      | op2(e21,e22) = e23
      | op2(e21,e23) = e23 )
    & ( op2(e20,e21) = e23
      | op2(e21,e21) = e23
      | op2(e22,e21) = e23
      | op2(e23,e21) = e23 )
    & ( op2(e22,e20) = e20
      | op2(e22,e21) = e20
      | op2(e22,e22) = e20
      | op2(e22,e23) = e20 )
    & ( op2(e20,e22) = e20
      | op2(e21,e22) = e20
      | op2(e22,e22) = e20
      | op2(e23,e22) = e20 )
    & ( op2(e22,e20) = e21
      | op2(e22,e21) = e21
      | op2(e22,e22) = e21
      | op2(e22,e23) = e21 )
    & ( op2(e20,e22) = e21
      | op2(e21,e22) = e21
      | op2(e22,e22) = e21
      | op2(e23,e22) = e21 )
    & ( op2(e22,e20) = e22
      | op2(e22,e21) = e22
      | op2(e22,e22) = e22
      | op2(e22,e23) = e22 )
    & ( op2(e20,e22) = e22
      | op2(e21,e22) = e22
      | op2(e22,e22) = e22
      | op2(e23,e22) = e22 )
    & ( op2(e22,e20) = e23
      | op2(e22,e21) = e23
      | op2(e22,e22) = e23
      | op2(e22,e23) = e23 )
    & ( op2(e20,e22) = e23
      | op2(e21,e22) = e23
      | op2(e22,e22) = e23
      | op2(e23,e22) = e23 )
    & ( op2(e23,e20) = e20
      | op2(e23,e21) = e20
      | op2(e23,e22) = e20
      | op2(e23,e23) = e20 )
    & ( op2(e20,e23) = e20
      | op2(e21,e23) = e20
      | op2(e22,e23) = e20
      | op2(e23,e23) = e20 )
    & ( op2(e23,e20) = e21
      | op2(e23,e21) = e21
      | op2(e23,e22) = e21
      | op2(e23,e23) = e21 )
    & ( op2(e20,e23) = e21
      | op2(e21,e23) = e21
      | op2(e22,e23) = e21
      | op2(e23,e23) = e21 )
    & ( op2(e23,e20) = e22
      | op2(e23,e21) = e22
      | op2(e23,e22) = e22
      | op2(e23,e23) = e22 )
    & ( op2(e20,e23) = e22
      | op2(e21,e23) = e22
      | op2(e22,e23) = e22
      | op2(e23,e23) = e22 )
    & ( op2(e23,e20) = e23
      | op2(e23,e21) = e23
      | op2(e23,e22) = e23
      | op2(e23,e23) = e23 )
    & ( op2(e20,e23) = e23
      | op2(e21,e23) = e23
      | op2(e22,e23) = e23
      | op2(e23,e23) = e23 ) )).

fof(ax5,axiom,
    ( op1(e10,e10) != op1(e11,e10)
    & op1(e10,e10) != op1(e12,e10)
    & op1(e10,e10) != op1(e13,e10)
    & op1(e11,e10) != op1(e12,e10)
    & op1(e11,e10) != op1(e13,e10)
    & op1(e12,e10) != op1(e13,e10)
    & op1(e10,e11) != op1(e11,e11)
    & op1(e10,e11) != op1(e12,e11)
    & op1(e10,e11) != op1(e13,e11)
    & op1(e11,e11) != op1(e12,e11)
    & op1(e11,e11) != op1(e13,e11)
    & op1(e12,e11) != op1(e13,e11)
    & op1(e10,e12) != op1(e11,e12)
    & op1(e10,e12) != op1(e12,e12)
    & op1(e10,e12) != op1(e13,e12)
    & op1(e11,e12) != op1(e12,e12)
    & op1(e11,e12) != op1(e13,e12)
    & op1(e12,e12) != op1(e13,e12)
    & op1(e10,e13) != op1(e11,e13)
    & op1(e10,e13) != op1(e12,e13)
    & op1(e10,e13) != op1(e13,e13)
    & op1(e11,e13) != op1(e12,e13)
    & op1(e11,e13) != op1(e13,e13)
    & op1(e12,e13) != op1(e13,e13)
    & op1(e10,e10) != op1(e10,e11)
    & op1(e10,e10) != op1(e10,e12)
    & op1(e10,e10) != op1(e10,e13)
    & op1(e10,e11) != op1(e10,e12)
    & op1(e10,e11) != op1(e10,e13)
    & op1(e10,e12) != op1(e10,e13)
    & op1(e11,e10) != op1(e11,e11)
    & op1(e11,e10) != op1(e11,e12)
    & op1(e11,e10) != op1(e11,e13)
    & op1(e11,e11) != op1(e11,e12)
    & op1(e11,e11) != op1(e11,e13)
    & op1(e11,e12) != op1(e11,e13)
    & op1(e12,e10) != op1(e12,e11)
    & op1(e12,e10) != op1(e12,e12)
    & op1(e12,e10) != op1(e12,e13)
    & op1(e12,e11) != op1(e12,e12)
    & op1(e12,e11) != op1(e12,e13)
    & op1(e12,e12) != op1(e12,e13)
    & op1(e13,e10) != op1(e13,e11)
    & op1(e13,e10) != op1(e13,e12)
    & op1(e13,e10) != op1(e13,e13)
    & op1(e13,e11) != op1(e13,e12)
    & op1(e13,e11) != op1(e13,e13)
    & op1(e13,e12) != op1(e13,e13) )).

fof(ax6,axiom,
    ( op2(e20,e20) != op2(e21,e20)
    & op2(e20,e20) != op2(e22,e20)
    & op2(e20,e20) != op2(e23,e20)
    & op2(e21,e20) != op2(e22,e20)
    & op2(e21,e20) != op2(e23,e20)
    & op2(e22,e20) != op2(e23,e20)
    & op2(e20,e21) != op2(e21,e21)
    & op2(e20,e21) != op2(e22,e21)
    & op2(e20,e21) != op2(e23,e21)
    & op2(e21,e21) != op2(e22,e21)
    & op2(e21,e21) != op2(e23,e21)
    & op2(e22,e21) != op2(e23,e21)
    & op2(e20,e22) != op2(e21,e22)
    & op2(e20,e22) != op2(e22,e22)
    & op2(e20,e22) != op2(e23,e22)
    & op2(e21,e22) != op2(e22,e22)
    & op2(e21,e22) != op2(e23,e22)
    & op2(e22,e22) != op2(e23,e22)
    & op2(e20,e23) != op2(e21,e23)
    & op2(e20,e23) != op2(e22,e23)
    & op2(e20,e23) != op2(e23,e23)
    & op2(e21,e23) != op2(e22,e23)
    & op2(e21,e23) != op2(e23,e23)
    & op2(e22,e23) != op2(e23,e23)
    & op2(e20,e20) != op2(e20,e21)
    & op2(e20,e20) != op2(e20,e22)
    & op2(e20,e20) != op2(e20,e23)
    & op2(e20,e21) != op2(e20,e22)
    & op2(e20,e21) != op2(e20,e23)
    & op2(e20,e22) != op2(e20,e23)
    & op2(e21,e20) != op2(e21,e21)
    & op2(e21,e20) != op2(e21,e22)
    & op2(e21,e20) != op2(e21,e23)
    & op2(e21,e21) != op2(e21,e22)
    & op2(e21,e21) != op2(e21,e23)
    & op2(e21,e22) != op2(e21,e23)
    & op2(e22,e20) != op2(e22,e21)
    & op2(e22,e20) != op2(e22,e22)
    & op2(e22,e20) != op2(e22,e23)
    & op2(e22,e21) != op2(e22,e22)
    & op2(e22,e21) != op2(e22,e23)
    & op2(e22,e22) != op2(e22,e23)
    & op2(e23,e20) != op2(e23,e21)
    & op2(e23,e20) != op2(e23,e22)
    & op2(e23,e20) != op2(e23,e23)
    & op2(e23,e21) != op2(e23,e22)
    & op2(e23,e21) != op2(e23,e23)
    & op2(e23,e22) != op2(e23,e23) )).

fof(ax7,axiom,
    ( e10 != e11
    & e10 != e12
    & e10 != e13
    & e11 != e12
    & e11 != e13
    & e12 != e13 )).

fof(ax8,axiom,
    ( e20 != e21
    & e20 != e22
    & e20 != e23
    & e21 != e22
    & e21 != e23
    & e22 != e23 )).

fof(ax9,axiom,
    ( e10 != e20
    & e10 != e21
    & e10 != e22
    & e10 != e23
    & e11 != e20
    & e11 != e21
    & e11 != e22
    & e11 != e23
    & e12 != e20
    & e12 != e21
    & e12 != e22
    & e12 != e23
    & e13 != e20
    & e13 != e21
    & e13 != e22
    & e13 != e23 )).

fof(ax10,axiom,
    ( ( ( op1(e10,op1(e10,e10)) != e10
        & op1(op1(e10,e10),e10) = e10
        & op1(op1(e10,e10),e10) != e10 )
      | ( op1(e10,op1(e10,e11)) != e11
        & op1(op1(e10,e11),e10) = e11
        & op1(op1(e10,e11),e11) != e10 )
      | ( op1(e10,op1(e10,e12)) != e12
        & op1(op1(e10,e12),e10) = e12
        & op1(op1(e10,e12),e12) != e10 )
      | ( op1(e10,op1(e10,e13)) != e13
        & op1(op1(e10,e13),e10) = e13
        & op1(op1(e10,e13),e13) != e10 )
      | ( op1(e11,op1(e11,e10)) != e10
        & op1(op1(e11,e10),e11) = e10
        & op1(op1(e11,e10),e10) != e11 )
      | ( op1(e11,op1(e11,e11)) != e11
        & op1(op1(e11,e11),e11) = e11
        & op1(op1(e11,e11),e11) != e11 )
      | ( op1(e11,op1(e11,e12)) != e12
        & op1(op1(e11,e12),e11) = e12
        & op1(op1(e11,e12),e12) != e11 )
      | ( op1(e11,op1(e11,e13)) != e13
        & op1(op1(e11,e13),e11) = e13
        & op1(op1(e11,e13),e13) != e11 )
      | ( op1(e12,op1(e12,e10)) != e10
        & op1(op1(e12,e10),e12) = e10
        & op1(op1(e12,e10),e10) != e12 )
      | ( op1(e12,op1(e12,e11)) != e11
        & op1(op1(e12,e11),e12) = e11
        & op1(op1(e12,e11),e11) != e12 )
      | ( op1(e12,op1(e12,e12)) != e12
        & op1(op1(e12,e12),e12) = e12
        & op1(op1(e12,e12),e12) != e12 )
      | ( op1(e12,op1(e12,e13)) != e13
        & op1(op1(e12,e13),e12) = e13
        & op1(op1(e12,e13),e13) != e12 )
      | ( op1(e13,op1(e13,e10)) != e10
        & op1(op1(e13,e10),e13) = e10
        & op1(op1(e13,e10),e10) != e13 )
      | ( op1(e13,op1(e13,e11)) != e11
        & op1(op1(e13,e11),e13) = e11
        & op1(op1(e13,e11),e11) != e13 )
      | ( op1(e13,op1(e13,e12)) != e12
        & op1(op1(e13,e12),e13) = e12
        & op1(op1(e13,e12),e12) != e13 )
      | ( op1(e13,op1(e13,e13)) != e13
        & op1(op1(e13,e13),e13) = e13
        & op1(op1(e13,e13),e13) != e13 ) )
    & ( ( op1(e10,e10) = op1(e10,e10)
        & op1(e10,op1(e10,e10)) != e10
        & op1(e11,op1(e10,e10)) != e11
        & op1(e12,op1(e10,e10)) != e12
        & op1(e13,op1(e10,e10)) != e13 )
      | ( op1(e11,e10) = op1(e10,e11)
        & op1(e10,op1(e10,e11)) != e10
        & op1(e11,op1(e10,e11)) != e11
        & op1(e12,op1(e10,e11)) != e12
        & op1(e13,op1(e10,e11)) != e13 )
      | ( op1(e12,e10) = op1(e10,e12)
        & op1(e10,op1(e10,e12)) != e10
        & op1(e11,op1(e10,e12)) != e11
        & op1(e12,op1(e10,e12)) != e12
        & op1(e13,op1(e10,e12)) != e13 )
      | ( op1(e13,e10) = op1(e10,e13)
        & op1(e10,op1(e10,e13)) != e10
        & op1(e11,op1(e10,e13)) != e11
        & op1(e12,op1(e10,e13)) != e12
        & op1(e13,op1(e10,e13)) != e13 )
      | ( op1(e10,e11) = op1(e11,e10)
        & op1(e10,op1(e11,e10)) != e10
        & op1(e11,op1(e11,e10)) != e11
        & op1(e12,op1(e11,e10)) != e12
        & op1(e13,op1(e11,e10)) != e13 )
      | ( op1(e11,e11) = op1(e11,e11)
        & op1(e10,op1(e11,e11)) != e10
        & op1(e11,op1(e11,e11)) != e11
        & op1(e12,op1(e11,e11)) != e12
        & op1(e13,op1(e11,e11)) != e13 )
      | ( op1(e12,e11) = op1(e11,e12)
        & op1(e10,op1(e11,e12)) != e10
        & op1(e11,op1(e11,e12)) != e11
        & op1(e12,op1(e11,e12)) != e12
        & op1(e13,op1(e11,e12)) != e13 )
      | ( op1(e13,e11) = op1(e11,e13)
        & op1(e10,op1(e11,e13)) != e10
        & op1(e11,op1(e11,e13)) != e11
        & op1(e12,op1(e11,e13)) != e12
        & op1(e13,op1(e11,e13)) != e13 )
      | ( op1(e10,e12) = op1(e12,e10)
        & op1(e10,op1(e12,e10)) != e10
        & op1(e11,op1(e12,e10)) != e11
        & op1(e12,op1(e12,e10)) != e12
        & op1(e13,op1(e12,e10)) != e13 )
      | ( op1(e11,e12) = op1(e12,e11)
        & op1(e10,op1(e12,e11)) != e10
        & op1(e11,op1(e12,e11)) != e11
        & op1(e12,op1(e12,e11)) != e12
        & op1(e13,op1(e12,e11)) != e13 )
      | ( op1(e12,e12) = op1(e12,e12)
        & op1(e10,op1(e12,e12)) != e10
        & op1(e11,op1(e12,e12)) != e11
        & op1(e12,op1(e12,e12)) != e12
        & op1(e13,op1(e12,e12)) != e13 )
      | ( op1(e13,e12) = op1(e12,e13)
        & op1(e10,op1(e12,e13)) != e10
        & op1(e11,op1(e12,e13)) != e11
        & op1(e12,op1(e12,e13)) != e12
        & op1(e13,op1(e12,e13)) != e13 )
      | ( op1(e10,e13) = op1(e13,e10)
        & op1(e10,op1(e13,e10)) != e10
        & op1(e11,op1(e13,e10)) != e11
        & op1(e12,op1(e13,e10)) != e12
        & op1(e13,op1(e13,e10)) != e13 )
      | ( op1(e11,e13) = op1(e13,e11)
        & op1(e10,op1(e13,e11)) != e10
        & op1(e11,op1(e13,e11)) != e11
        & op1(e12,op1(e13,e11)) != e12
        & op1(e13,op1(e13,e11)) != e13 )
      | ( op1(e12,e13) = op1(e13,e12)
        & op1(e10,op1(e13,e12)) != e10
        & op1(e11,op1(e13,e12)) != e11
        & op1(e12,op1(e13,e12)) != e12
        & op1(e13,op1(e13,e12)) != e13 )
      | ( op1(e13,e13) = op1(e13,e13)
        & op1(e10,op1(e13,e13)) != e10
        & op1(e11,op1(e13,e13)) != e11
        & op1(e12,op1(e13,e13)) != e12
        & op1(e13,op1(e13,e13)) != e13 ) ) )).

fof(ax11,axiom,
    ( ( ( op2(e20,op2(e20,e20)) != e20
        & op2(op2(e20,e20),e20) = e20
        & op2(op2(e20,e20),e20) != e20 )
      | ( op2(e20,op2(e20,e21)) != e21
        & op2(op2(e20,e21),e20) = e21
        & op2(op2(e20,e21),e21) != e20 )
      | ( op2(e20,op2(e20,e22)) != e22
        & op2(op2(e20,e22),e20) = e22
        & op2(op2(e20,e22),e22) != e20 )
      | ( op2(e20,op2(e20,e23)) != e23
        & op2(op2(e20,e23),e20) = e23
        & op2(op2(e20,e23),e23) != e20 )
      | ( op2(e21,op2(e21,e20)) != e20
        & op2(op2(e21,e20),e21) = e20
        & op2(op2(e21,e20),e20) != e21 )
      | ( op2(e21,op2(e21,e21)) != e21
        & op2(op2(e21,e21),e21) = e21
        & op2(op2(e21,e21),e21) != e21 )
      | ( op2(e21,op2(e21,e22)) != e22
        & op2(op2(e21,e22),e21) = e22
        & op2(op2(e21,e22),e22) != e21 )
      | ( op2(e21,op2(e21,e23)) != e23
        & op2(op2(e21,e23),e21) = e23
        & op2(op2(e21,e23),e23) != e21 )
      | ( op2(e22,op2(e22,e20)) != e20
        & op2(op2(e22,e20),e22) = e20
        & op2(op2(e22,e20),e20) != e22 )
      | ( op2(e22,op2(e22,e21)) != e21
        & op2(op2(e22,e21),e22) = e21
        & op2(op2(e22,e21),e21) != e22 )
      | ( op2(e22,op2(e22,e22)) != e22
        & op2(op2(e22,e22),e22) = e22
        & op2(op2(e22,e22),e22) != e22 )
      | ( op2(e22,op2(e22,e23)) != e23
        & op2(op2(e22,e23),e22) = e23
        & op2(op2(e22,e23),e23) != e22 )
      | ( op2(e23,op2(e23,e20)) != e20
        & op2(op2(e23,e20),e23) = e20
        & op2(op2(e23,e20),e20) != e23 )
      | ( op2(e23,op2(e23,e21)) != e21
        & op2(op2(e23,e21),e23) = e21
        & op2(op2(e23,e21),e21) != e23 )
      | ( op2(e23,op2(e23,e22)) != e22
        & op2(op2(e23,e22),e23) = e22
        & op2(op2(e23,e22),e22) != e23 )
      | ( op2(e23,op2(e23,e23)) != e23
        & op2(op2(e23,e23),e23) = e23
        & op2(op2(e23,e23),e23) != e23 ) )
    & ( ( op2(e20,e20) = op2(e20,e20)
        & op2(e20,op2(e20,e20)) != e20
        & op2(e21,op2(e20,e20)) != e21
        & op2(e22,op2(e20,e20)) != e22
        & op2(e23,op2(e20,e20)) != e23 )
      | ( op2(e21,e20) = op2(e20,e21)
        & op2(e20,op2(e20,e21)) != e20
        & op2(e21,op2(e20,e21)) != e21
        & op2(e22,op2(e20,e21)) != e22
        & op2(e23,op2(e20,e21)) != e23 )
      | ( op2(e22,e20) = op2(e20,e22)
        & op2(e20,op2(e20,e22)) != e20
        & op2(e21,op2(e20,e22)) != e21
        & op2(e22,op2(e20,e22)) != e22
        & op2(e23,op2(e20,e22)) != e23 )
      | ( op2(e23,e20) = op2(e20,e23)
        & op2(e20,op2(e20,e23)) != e20
        & op2(e21,op2(e20,e23)) != e21
        & op2(e22,op2(e20,e23)) != e22
        & op2(e23,op2(e20,e23)) != e23 )
      | ( op2(e20,e21) = op2(e21,e20)
        & op2(e20,op2(e21,e20)) != e20
        & op2(e21,op2(e21,e20)) != e21
        & op2(e22,op2(e21,e20)) != e22
        & op2(e23,op2(e21,e20)) != e23 )
      | ( op2(e21,e21) = op2(e21,e21)
        & op2(e20,op2(e21,e21)) != e20
        & op2(e21,op2(e21,e21)) != e21
        & op2(e22,op2(e21,e21)) != e22
        & op2(e23,op2(e21,e21)) != e23 )
      | ( op2(e22,e21) = op2(e21,e22)
        & op2(e20,op2(e21,e22)) != e20
        & op2(e21,op2(e21,e22)) != e21
        & op2(e22,op2(e21,e22)) != e22
        & op2(e23,op2(e21,e22)) != e23 )
      | ( op2(e23,e21) = op2(e21,e23)
        & op2(e20,op2(e21,e23)) != e20
        & op2(e21,op2(e21,e23)) != e21
        & op2(e22,op2(e21,e23)) != e22
        & op2(e23,op2(e21,e23)) != e23 )
      | ( op2(e20,e22) = op2(e22,e20)
        & op2(e20,op2(e22,e20)) != e20
        & op2(e21,op2(e22,e20)) != e21
        & op2(e22,op2(e22,e20)) != e22
        & op2(e23,op2(e22,e20)) != e23 )
      | ( op2(e21,e22) = op2(e22,e21)
        & op2(e20,op2(e22,e21)) != e20
        & op2(e21,op2(e22,e21)) != e21
        & op2(e22,op2(e22,e21)) != e22
        & op2(e23,op2(e22,e21)) != e23 )
      | ( op2(e22,e22) = op2(e22,e22)
        & op2(e20,op2(e22,e22)) != e20
        & op2(e21,op2(e22,e22)) != e21
        & op2(e22,op2(e22,e22)) != e22
        & op2(e23,op2(e22,e22)) != e23 )
      | ( op2(e23,e22) = op2(e22,e23)
        & op2(e20,op2(e22,e23)) != e20
        & op2(e21,op2(e22,e23)) != e21
        & op2(e22,op2(e22,e23)) != e22
        & op2(e23,op2(e22,e23)) != e23 )
      | ( op2(e20,e23) = op2(e23,e20)
        & op2(e20,op2(e23,e20)) != e20
        & op2(e21,op2(e23,e20)) != e21
        & op2(e22,op2(e23,e20)) != e22
        & op2(e23,op2(e23,e20)) != e23 )
      | ( op2(e21,e23) = op2(e23,e21)
        & op2(e20,op2(e23,e21)) != e20
        & op2(e21,op2(e23,e21)) != e21
        & op2(e22,op2(e23,e21)) != e22
        & op2(e23,op2(e23,e21)) != e23 )
      | ( op2(e22,e23) = op2(e23,e22)
        & op2(e20,op2(e23,e22)) != e20
        & op2(e21,op2(e23,e22)) != e21
        & op2(e22,op2(e23,e22)) != e22
        & op2(e23,op2(e23,e22)) != e23 )
      | ( op2(e23,e23) = op2(e23,e23)
        & op2(e20,op2(e23,e23)) != e20
        & op2(e21,op2(e23,e23)) != e21
        & op2(e22,op2(e23,e23)) != e22
        & op2(e23,op2(e23,e23)) != e23 ) ) )).

fof(ax12,axiom,
    ( e11 = op1(e10,op1(e10,e10))
    & e12 = op1(e10,e10)
    & e13 = op1(e10,op1(e10,op1(e10,e10))) )).

fof(ax13,axiom,
    ( e21 = op2(e20,op2(e20,e20))
    & e22 = op2(e20,e20)
    & e23 = op2(e20,op2(e20,op2(e20,e20))) )).

fof(ax14,axiom,
    ( h1(e10) = e20
    & h1(e11) = op2(e20,op2(e20,e20))
    & h1(e12) = op2(e20,e20)
    & h1(e13) = op2(e20,op2(e20,op2(e20,e20))) )).

fof(ax15,axiom,
    ( h2(e10) = e21
    & h2(e11) = op2(e21,op2(e21,e21))
    & h2(e12) = op2(e21,e21)
    & h2(e13) = op2(e21,op2(e21,op2(e21,e21))) )).

fof(ax16,axiom,
    ( h3(e10) = e22
    & h3(e11) = op2(e22,op2(e22,e22))
    & h3(e12) = op2(e22,e22)
    & h3(e13) = op2(e22,op2(e22,op2(e22,e22))) )).

fof(ax17,axiom,
    ( h4(e10) = e23
    & h4(e11) = op2(e23,op2(e23,e23))
    & h4(e12) = op2(e23,e23)
    & h4(e13) = op2(e23,op2(e23,op2(e23,e23))) )).

fof(co1,conjecture,
    ( ( h1(op1(e10,e10)) = op2(h1(e10),h1(e10))
      & h1(op1(e10,e11)) = op2(h1(e10),h1(e11))
      & h1(op1(e10,e12)) = op2(h1(e10),h1(e12))
      & h1(op1(e10,e13)) = op2(h1(e10),h1(e13))
      & h1(op1(e11,e10)) = op2(h1(e11),h1(e10))
      & h1(op1(e11,e11)) = op2(h1(e11),h1(e11))
      & h1(op1(e11,e12)) = op2(h1(e11),h1(e12))
      & h1(op1(e11,e13)) = op2(h1(e11),h1(e13))
      & h1(op1(e12,e10)) = op2(h1(e12),h1(e10))
      & h1(op1(e12,e11)) = op2(h1(e12),h1(e11))
      & h1(op1(e12,e12)) = op2(h1(e12),h1(e12))
      & h1(op1(e12,e13)) = op2(h1(e12),h1(e13))
      & h1(op1(e13,e10)) = op2(h1(e13),h1(e10))
      & h1(op1(e13,e11)) = op2(h1(e13),h1(e11))
      & h1(op1(e13,e12)) = op2(h1(e13),h1(e12))
      & h1(op1(e13,e13)) = op2(h1(e13),h1(e13))
      & ( h1(e10) = e20
        | h1(e11) = e20
        | h1(e12) = e20
        | h1(e13) = e20 )
      & ( h1(e10) = e21
        | h1(e11) = e21
        | h1(e12) = e21
        | h1(e13) = e21 )
      & ( h1(e10) = e22
        | h1(e11) = e22
        | h1(e12) = e22
        | h1(e13) = e22 )
      & ( h1(e10) = e23
        | h1(e11) = e23
        | h1(e12) = e23
        | h1(e13) = e23 ) )
    | ( h2(op1(e10,e10)) = op2(h2(e10),h2(e10))
      & h2(op1(e10,e11)) = op2(h2(e10),h2(e11))
      & h2(op1(e10,e12)) = op2(h2(e10),h2(e12))
      & h2(op1(e10,e13)) = op2(h2(e10),h2(e13))
      & h2(op1(e11,e10)) = op2(h2(e11),h2(e10))
      & h2(op1(e11,e11)) = op2(h2(e11),h2(e11))
      & h2(op1(e11,e12)) = op2(h2(e11),h2(e12))
      & h2(op1(e11,e13)) = op2(h2(e11),h2(e13))
      & h2(op1(e12,e10)) = op2(h2(e12),h2(e10))
      & h2(op1(e12,e11)) = op2(h2(e12),h2(e11))
      & h2(op1(e12,e12)) = op2(h2(e12),h2(e12))
      & h2(op1(e12,e13)) = op2(h2(e12),h2(e13))
      & h2(op1(e13,e10)) = op2(h2(e13),h2(e10))
      & h2(op1(e13,e11)) = op2(h2(e13),h2(e11))
      & h2(op1(e13,e12)) = op2(h2(e13),h2(e12))
      & h2(op1(e13,e13)) = op2(h2(e13),h2(e13))
      & ( h2(e10) = e20
        | h2(e11) = e20
        | h2(e12) = e20
        | h2(e13) = e20 )
      & ( h2(e10) = e21
        | h2(e11) = e21
        | h2(e12) = e21
        | h2(e13) = e21 )
      & ( h2(e10) = e22
        | h2(e11) = e22
        | h2(e12) = e22
        | h2(e13) = e22 )
      & ( h2(e10) = e23
        | h2(e11) = e23
        | h2(e12) = e23
        | h2(e13) = e23 ) )
    | ( h3(op1(e10,e10)) = op2(h3(e10),h3(e10))
      & h3(op1(e10,e11)) = op2(h3(e10),h3(e11))
      & h3(op1(e10,e12)) = op2(h3(e10),h3(e12))
      & h3(op1(e10,e13)) = op2(h3(e10),h3(e13))
      & h3(op1(e11,e10)) = op2(h3(e11),h3(e10))
      & h3(op1(e11,e11)) = op2(h3(e11),h3(e11))
      & h3(op1(e11,e12)) = op2(h3(e11),h3(e12))
      & h3(op1(e11,e13)) = op2(h3(e11),h3(e13))
      & h3(op1(e12,e10)) = op2(h3(e12),h3(e10))
      & h3(op1(e12,e11)) = op2(h3(e12),h3(e11))
      & h3(op1(e12,e12)) = op2(h3(e12),h3(e12))
      & h3(op1(e12,e13)) = op2(h3(e12),h3(e13))
      & h3(op1(e13,e10)) = op2(h3(e13),h3(e10))
      & h3(op1(e13,e11)) = op2(h3(e13),h3(e11))
      & h3(op1(e13,e12)) = op2(h3(e13),h3(e12))
      & h3(op1(e13,e13)) = op2(h3(e13),h3(e13))
      & ( h3(e10) = e20
        | h3(e11) = e20
        | h3(e12) = e20
        | h3(e13) = e20 )
      & ( h3(e10) = e21
        | h3(e11) = e21
        | h3(e12) = e21
        | h3(e13) = e21 )
      & ( h3(e10) = e22
        | h3(e11) = e22
        | h3(e12) = e22
        | h3(e13) = e22 )
      & ( h3(e10) = e23
        | h3(e11) = e23
        | h3(e12) = e23
        | h3(e13) = e23 ) )
    | ( h4(op1(e10,e10)) = op2(h4(e10),h4(e10))
      & h4(op1(e10,e11)) = op2(h4(e10),h4(e11))
      & h4(op1(e10,e12)) = op2(h4(e10),h4(e12))
      & h4(op1(e10,e13)) = op2(h4(e10),h4(e13))
      & h4(op1(e11,e10)) = op2(h4(e11),h4(e10))
      & h4(op1(e11,e11)) = op2(h4(e11),h4(e11))
      & h4(op1(e11,e12)) = op2(h4(e11),h4(e12))
      & h4(op1(e11,e13)) = op2(h4(e11),h4(e13))
      & h4(op1(e12,e10)) = op2(h4(e12),h4(e10))
      & h4(op1(e12,e11)) = op2(h4(e12),h4(e11))
      & h4(op1(e12,e12)) = op2(h4(e12),h4(e12))
      & h4(op1(e12,e13)) = op2(h4(e12),h4(e13))
      & h4(op1(e13,e10)) = op2(h4(e13),h4(e10))
      & h4(op1(e13,e11)) = op2(h4(e13),h4(e11))
      & h4(op1(e13,e12)) = op2(h4(e13),h4(e12))
      & h4(op1(e13,e13)) = op2(h4(e13),h4(e13))
      & ( h4(e10) = e20
        | h4(e11) = e20
        | h4(e12) = e20
        | h4(e13) = e20 )
      & ( h4(e10) = e21
        | h4(e11) = e21
        | h4(e12) = e21
        | h4(e13) = e21 )
      & ( h4(e10) = e22
        | h4(e11) = e22
        | h4(e12) = e22
        | h4(e13) = e22 )
      & ( h4(e10) = e23
        | h4(e11) = e23
        | h4(e12) = e23
        | h4(e13) = e23 ) ) )).

%--------------------------------------------------------------------------
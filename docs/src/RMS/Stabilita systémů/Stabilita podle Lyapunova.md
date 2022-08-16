Stabilita podle Lyapunova
=========================

Stav ``\bm{x}^*=\bm{0}`` je 

* lokálně stabilný ve smyslu Lyapunova (i.s.l) [^1] právě když
```math
∀ϵ>0, ∃δ>0 : \|\bm{x}(0)-\bm{x}^*\|<δ ⇒ ∀t \|\bm{x}(t)-\bm{x}^*\| < ϵ
```
* lokálně asymptoticky stabilní právě když je lokálně stabilní i.s.l a také
```math
\lim_{t→∞} \| \bm{x}(t) - \bm{x}^* \| = 0
\;,\quad 
x(0) = \bm{x}^* + ϵ 
```
* lokálně exponenciálně stabilní právě když je stabilní i.s.l a také
```math
\lim_{t→∞} \| \bm{x}(t) - \bm{x}^* \| ≤ C \exp{-αt}
\;,\quad 
x(0) = \bm{x}^* + ϵ
\,,\;
C,α > 0
```

Lyapunovská analýza
===================

Pokud pro systém ``\bm{\dot{x}} = \bm{f}(\bm{x})`` jsme schopni najít diferencovatelnou funkci ``V(\bm{x})`` můžeme o stavu ``\bm{x}^* = \bm{0}`` tvrdit že je:

* stabilní i.s.l. pokud ``V(\bm{x}) ≻ 0 \,,\; \dot{V}(\bm{x}) ⪯ 0`` [^2].

* lokálně asymptoticky stabilní pro ``\bm{x} ∈ \mathbb{B}`` pokud ``V(\bm{x}) ≻ 0, \dot{V}(\bm{x}) ≺ 0`` kde ``\mathbb{B}`` je malá oblast kolem ``\bm{x}^* = \bm{0}`` 

* globálně asymptoticky stabilní (g.a.s) pokud ``∀\bm{x} \,,\; V(\bm{x}) ≻ 0, \dot{V}(\bm{x}) ≺ 0`` a ``\|\bm{x}\| → ∞ ⇒ V(\bm{x}) → ∞``

* exponenciálně stabilní pokud ``V(\bm{x}) ≻ 0, \dot{V}(\bm{x}) ≤ -αV(\bm{x}) \,,\; α>0``

* nestabilní pokud ``\dot{V}(\bm{x}^*) ≻ 0``

funkce ``V(\bm{x})`` které dokazují stabilitu budeme nazývat Lyapunovy funkcemi [^3].

Stabilita lineárních systémů
============================

Mějmě lineární systém ``\bm{\dot{x}} = \bm{A}\bm{x}`` a funkci ``V(\bm{x}) = \bm{x}^T \bm{C} \bm{x}``. Derivaci ``\dot{V}(\bm{x})`` lze vyjádřit jako
```math
	\dot{V}(\bm{x}) = \bm{x}^T (\bm{C}\bm{A} + \bm{A}^T\bm{C}) \bm{x}
```
Rovnici
```math
\bm{C}\bm{A} + \bm{A}^T\bm{C} = -\bm{Q}
```
budeme nazývat *Lyapunovou rovnicí*, přičemž platí věta:

*Systém ``\bm{\dot{x}}=\bm{A}\bm{x}`` je stabilní, pokud pro každou symetrickou, pozitivně definitní matici ``\bm{Q}`` má Lyapunova rovnice rešení ``\bm{C}`` v podobě pozitivně definitní matice.*


[^1]: "**i**n the **s**ense of **L**yapunov"
[^2]: ``V(\bm{x})`` je pozitivně definitní a ``\dot{V}(\bm{x})`` negativně semi-definitní
[^3]: Celková energie systému je často Lyapunovou funkcí
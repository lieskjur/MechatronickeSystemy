Diskretizace Lineárních Systémů
===============================

Uvažujeme-li lineární spojitý systém ve tvaru
Uvažujme lineární systém ve tvaru
```math
\begin{aligned}
	\bm{ẋ}(t) &= \bm{A} \bm{x}(t) + \bm{B} \bm{u}(t)
	\\
	\bm{y}(t) &= \bm{C} \bm{x}(t) + \bm{D} \bm{u}(t)
\end{aligned}
```
kde

* ``\bm{x}`` vektor stavů
* ``\bm{u}`` vektor vstupů
* ``\bm{y}`` vektor výstupů

Jeho stav v čase ``t+T``, ``T→0`` lze popsat rovnicí
```math
\bm{x}(t+T) = e^{\bm{A}T}\bm{x}(t) + \int_t^{t+T} e^{\bm{A}(t+T-τ)} \bm{B} \bm{u}(τ)\ dτ
```
kde
```math
\begin{aligned}
	e^{\bm{A}T} &= \bm{I} + \bm{A}T + \frac{\bm{A}^2T}{2!} + \frac{\bm{A}^3τ}{3!} + \dots
	\\
	\int_t^{t+T} e^{\bm{A}(t+T-τ)} \bm{B} dτ &= \bm{A}^{-1}(e^{\bm{A}T}-\bm{I})\bm{B}	
\end{aligned}
```
pak za překpokladu konstantního stupu ``\bm{u}(τ)``, ``τ∈⟨t,t+T)`` jej lze aproximovat jako
```math
\bm{x}(t+T) ≈ (\bm{I} + \bm{A}T)\,\bm{x}(t) + \bm{B} \bm{u}(t)
```
přičemž výstupy systému v čase ``t`` jsou
```math
\bm{y}(t) = \bm{C} \, \bm{x}(t) + \bm{D} \, \bm{u}(t)
```

---

Pokud ``T`` zvolíme jako konstantní můžeme diskrétní lineární systém popsat rovnicemi
```math
\begin{aligned}
	\bm{x}_{k+1} &= \bm{\tilde{A}} \bm{x}_k + \bm{B} \bm{u}_k \;,\quad \bm{\tilde{A}} = (\bm{I} + \bm{A}T)
	\\
	\bm{y}_k &= \bm{C} \bm{x}_k + \bm{D} \bm{u}_k
\end{aligned}
```
kde dolní index ``k`` značí veličinu v čase ``t = kT``.

---

[Zdroj](../literature/LinearODE-Discretization.pdf)
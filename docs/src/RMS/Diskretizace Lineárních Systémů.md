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
e^{\bm{A}T} = \bm{I} + \bm{A}T + \frac{\bm{A}^2T}{2!} + \frac{\bm{A}^3τ}{3!} + \dots
```
za překpokladu konstantního stupu ``\bm{u}(τ)``, ``τ∈⟨t,t+T)`` jej lze vyjmout člen ``\bm{B} \bm{u}(τ)`` z integrálu
```math
\int_t^{t+T} e^{\bm{A}(t+T-τ)} \bm{B} \bm{u}(τ)\ dτ = \int_t^{t+T} e^{\bm{A}(t+T-τ)} \ dτ \bm{B} \bm{u}(τ)
```
a provést úpravu
```math
\begin{aligned}
	∫_t^{t+T} e^{\bm{A}(t+T-τ)} dτ
	&= ∫_0^{T} e^{\bm{A}(T-τ)} dτ \\
	&= \bm{A}^{-1} ∫_0^{T} \bm{A} e^{\bm{A}(T-τ)} dτ \\
	&= \bm{A}^{-1} \left.e^{\bm{A}(T-τ)}\right|_0^T \ \\
	&= \bm{A}^{-1}(e^{\bm{A}T}-\bm{I})
\end{aligned}
```
pro ``T→0`` můžeme approximovat jako
```math
\bm{x}(t+T) ≈ (\bm{I} + \bm{A}T)\,\bm{x}(t) + \bm{B}T \bm{u}(t)
```
přičemž výstupy systému v čase ``t`` jsou
```math
\bm{y}(t) = \bm{C} \, \bm{x}(t) + \bm{D} \, \bm{u}(t)
```

---

Pokud ``T`` zvolíme jako konstantní můžeme diskrétní lineární systém popsat rovnicemi
```math
\begin{aligned}
	\bm{x}_{k+1} &= \bm{M} \bm{x}_k + \bm{N} \bm{u}_k
	\\
	\bm{y}_k &= \bm{C} \bm{x}_k + \bm{D} \bm{u}_k
\end{aligned}
```
kde dolní index ``k`` značí veličinu v čase ``t = kT`` a
```math
\bm{M} = (\bm{I} + \bm{A}T)
\;,\quad 
\bm{N} = \bm{B}T
```
---

[Zdroj](../literature/LinearODE-Discretization.pdf)
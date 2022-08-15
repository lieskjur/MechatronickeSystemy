LQR
===

Linear Quadratic Regulator (LQR) je určen pro regulaci lineárního systému ve tvaru
```math
\bm{\dot{x}}(τ) = \bm{f}(\bm{x}(τ),\bm{u}(τ),τ) = \bm{A} \bm{x}(τ) + \bm{B} \bm{u}(τ)
```
s kvadratickým Lagrangiánem [kritéria optimality](Kritérium optimality.md)
```math
L(\bm{x}(τ),\bm{u}(τ),τ) = \bm{x}(τ)^T \bm{Q} \, \bm{x}(τ) + \bm{u}(τ)^T \bm{R} \, \bm{u}(τ)
```
kde 
```math
\bm{Q} = \bm{Q}^T ≥ 0
\;,\quad 
\bm{R} = \bm{R}^T ≥ 0
```
je postaven kolem Bellmanovy funkce ve tvaru
```math
J^*(\bm{x}(t),t) = \bm{x}(τ)^T \bm{S} \, \bm{x}(τ) \;,\quad \bm{S} = \bm{S}^T
```

---

Tvar optimálního řízení lze získat z podmínky lokálního extrému
```math
\frac{∂}{∂\bm{u}} \left(
	F(\bm{x}(τ),\bm{u}(τ),τ)
\right ) = 0
```
variační úlohy funkcionálu
```math
0
=
\min_{\bm{u}(τ)}
∫_t^{t+Δt}
F(\bm{x}(τ),\bm{u}(τ),τ)
\ dτ
```
odvozené z [Bellmanova principu optimality](Bellmanův princip optimality.md), kde
```math
F(\bm{x}(τ),\bm{u}(τ),τ)
=
L(\bm{x}(τ),\bm{u}(τ),τ) + \frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}}\bm{f}(\bm{x}(τ),\bm{u}(τ),τ)
```

---

Po dosazení stavového popisu systému, Lagrangiánu a Bellmanovy funkce získáváme rovnici
```math
F(\bm{x}(τ),\bm{u}(τ),τ)
=
\bm{x}(τ)^T \bm{Q} \, \bm{x}(τ) + \bm{u}(τ)^T \bm{R} \, \bm{u}(τ) + 2 \bm{x}(τ)^T \bm{S} ( \bm{A} \bm{x}(τ) + \bm{B} \bm{u}(τ) )
```
přičemž z podmínky lokálního extrému lze vyjádřit optimální řízení ``\bm{u}^*(\bm{x}(τ),τ)``
```math
\begin{aligned}
	2 \bm{u}(τ)^T \bm{R} + 2 \bm{x}(τ)^T \bm{S} \bm{B} &= 0 \\
	\bm{u}^*(\bm{x}(τ),τ) &= - \bm{R}^{-1} \bm{B}^T \bm{S} \, \bm{x}(τ) 
\end{aligned}
```
které když dosadíme do variační úlohy, získáme rovnici
```math
0
=
∫_t^{t+Δt}
\bm{x}^T \bm{Q} \, \bm{x} + \bm{x}^T \bm{S} \bm{B} \bm{R}^{-1} \bm{R} \bm{R}^{-1} \bm{B}^T \bm{S} \, \bm{x} + 2 \bm{x}^T \bm{S} ( \bm{A} \bm{x} - \bm{B} \bm{R}^{-1} \bm{B}^T \bm{S} \, \bm{x} )
\ dτ
```

---

Tu lze dále upravit na
```math
0
=
∫_t^{t+Δt}
\bm{x}(τ)^T \left(
	\bm{Q} - \bm{S}\bm{B}\bm{R}^{-1} \bm{B}^T \bm{S} + \bm{S}\bm{A} + \bm{A}^T \bm{S}
\right) \bm{x}(τ)
\ dτ
```
která platí pro libovolné ``\bm{x}(t)`` pokud je ``\bm{S}`` řešením tzv. *Continuous Algebraic Riccati Equation (C.A.R.E.)*
```math
\bm{Q} - \bm{S}\bm{B}\bm{R}^{-1} \bm{B}^T \bm{S} + \bm{S}\bm{A} + \bm{A}^T \bm{S}
= 0
```

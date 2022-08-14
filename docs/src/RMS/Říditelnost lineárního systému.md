Říditelnost lineárního systému
================================

Stav lineárního systému ``\dot{\bm{x}} = \bm{A}\bm{x} + \bm{B}\bm{u}`` v čase ``t`` lze vyjádřit jako
```math
\bm{x}(t) = \int_0^t e^{\bm{A}(t-τ)} \bm{B} \bm{u}(τ)\ dτ
```
Cayley-Hamiltonův teorém praví, že pro rozumnou matici ``\bm{A} ∈ \mathbb{R}^{n×n}`` lze exponenciání funkci ``e^{\bm{A}t}`` převést do tvaru
```math
e^{\bm{A}t} = ϕ_0(t) \bm{I} + ϕ_1(t) \bm{A} + \dots + ϕ_{n-1}(t) \bm{A}^{n-1}
```

Po úpravě do maticového tvaru a zpětném dosazení získáme stav systému ve tvaru
```math
\bm{x}(t) =
\bm{\bm{R}}
\int_0^t
\begin{bmatrix}
	ϕ_0(t-τ)\ \bm{u}(τ)\\
	ϕ_1(t-τ)\ \bm{u}(τ)\\
	\vdots \\
	ϕ_{n-1}(t-τ)\ \bm{u}(τ)\\
\end{bmatrix}
dτ
```
, kde ``\bm{R}`` je matice říditelnosti
```math
\bm{\bm{R}}
=
\begin{bmatrix}
	\bm{B} & \bm{A}\bm{B} & \dots & \bm{A}^{n-1}\bm{B}
\end{bmatrix}
```

---

Všechny stavy systému ``\bm{x} ∈ \mathbb{R}^n`` jsou dosažitelné vhodnou volbou řízení ``\bm{u}`` právě tehdy, když
```math
\text{rank}(\bm{R}) = n
```
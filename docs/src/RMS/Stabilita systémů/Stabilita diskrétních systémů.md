Stabilita diskrétních systémů
=============================
Uvažujeme-li diskrétní systém ve tvaru
```math
\bm{x}_{k+1} = \bm{A}\bm{x}_k \;,\quad \bm{A} ∈ \mathbb{R}^{n×n},\ \bm{x}_k ∈ \mathbb{R}^n 
```
jeho stav ``\bm{x}_N`` v závislosti na počátečním stavu ``\bm{x}_0`` lze popsat rovnicí
```math
\bm{x}_N = \bm{A}^N \bm{x}_0
```

---

Jsou-li ``λ_i ∈ \mathbb{C}`` vlastní čísla a ``\bm{u}_i ∈ \mathbb{R}^n \,,\; \|\bm{u}_i\| = 1`` vlastní vektory matice ``\bm{A}``
```math
\bm{A} \bm{u}_i = λ_i \bm{u}_i \;,\quad i ∈ ⟨1,n⟩
```
lze ji vyjádřit jako
```math
\bm{A} = \bm{T}\bm{D}\bm{T}^{-1} \;,\quad \bm{T} = [u_i], \ \bm{D} = ⌈λ_i⌋
```
přičemž dosazením obdržíme N-tý stav systému ve tvaru
```math
\bm{x}_N = \bm{T}\bm{D}^N\bm{T}^{-1}\bm{x}_0
\;,\quad 
\bm{D}^N = ⌈λ_i^N⌋
```
z kterého plyne podmínka stability
```math
\|λ_i\| ≤ 1 \;,\quad ∀i
```
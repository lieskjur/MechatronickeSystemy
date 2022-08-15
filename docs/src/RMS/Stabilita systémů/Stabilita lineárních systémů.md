Stabilita lineárních systémů
============================

Uvažujeme-li lineární systém ve tvaru
```math
\dot{\bm{x}} = \bm{A}\bm{x} \;,\quad  \bm{A} ∈ \mathbb{R}^{n×n},\ \bm{x} ∈ \mathbb{R}^n 
```
jeho N-tý stav ``\bm{x}(t)`` v závislosti na počátečním stavu ``\bm{x}_0 = \bm{x}(0)`` lze vyjádřit jako
```math
\bm{x}(t) = e^{\bm{A}t}\bm{x}_0
```

---

Jsou-li ``λ_i ∈ \mathbb{C}`` vlastní čísla a ``\bm{u}_i ∈ \mathbb{R}^n`` vlastní vektory matice ``\bm{A}``
```math
\bm{A} \bm{u}_i = λ_i \bm{u}_i \;,\quad  i = 1,\dots,n
```
lze ji vyjádřit jako:
```math
\bm{A} = \bm{T}\bm{D}\bm{T}^{-1} \;,\quad  \bm{T} = [u_i], \ \bm{D} = ⌈λ_i⌋
```
přičemž dosazením obdržíme stav systému ve tvaru
```math
\bm{x}(t) = \bm{T}e^{\bm{D}t}\bm{T}^{-1}\bm{x}_0 \;,\quad  e^{\bm{D}t} = ⌈e^{λ_it}⌋
```

---

Jelikož vlastní čísla ``λ_i`` mohou být komplexní, ``e^{λ_it}`` obecně nabývá tvaru 
```math
\begin{aligned}
e^{λ_i t} & = e^{(a_i+jb_i) t} = e^{a_i t} e^{j b_i t} \\
&= e^{a_i t}\big( \cos(b_i t) + j \sin(b_i t) \big)
\end{aligned}
```
z čehož plyne podmínka stability
```math
\bm{x}(t) → \bm{0} ⇔ ℜ(λ_i) ≤ 0 \,\; ∀i
```
State dependent Riccati equation
================================
Mějme systém ve tvaru
```math
\bm{\dot{x}} = \bm{f}(\bm{x}) + \bm{g}(\bm{x})\bm{u}
```
ten lze linearizovat kolem pracovního bodu ``\bm{x}_0`` a vstupu ``\bm{u}_0 = \bm{0}``
```math
\bm{\dot{x}} = \bm{f}(\bm{x}_0) + \frac{∂\bm{f}}{∂\bm{x}}(\bm{x}_0) (\bm{x}-\bm{x}_0) + \bm{g}(\bm{x}_0) \bm{u}
```
pokud najdeme bod ``\bm{x}_0`` splnůjící
```math
\bm{f}(\bm{x}_0) - \frac{∂\bm{f}}{∂\bm{x}}(\bm{x}_0) \bm{x}_0 = \bm{0}
```
můžeme linearizovanou rovnici kolem ``\bm{x}_0`` psát jako
```math
\bm{\dot{x}}
=
\underbrace{
	\frac{∂\bm{f}}{∂\bm{x}}
	(\bm{x}_0)
}_{\bm{A}}
\bm{x}
+
\underbrace{
	\bm{g}(\bm{x}_0)
}_{\bm{B}}
\bm{u}
```

---

Hledání optimálního ``\bm{x}_0`` pro ``\bm{x}(t)`` lze formulovat jako problém s kvadratickým kritériem optimality a nelineární vazbovou rovnicí

```math
\begin{aligned}
	\text{minimalizuj} &: (\bm{x}_0-\bm{x}(t))^T (\bm{x}_0-\bm{x}(t)) \\
	\text{pro přípustné} &: \bm{f}(\bm{x}_0) - \frac{∂\bm{f}}{∂\bm{x}}(\bm{x}_0) \bm{x}_0 = \bm{0}
\end{aligned}
```
Linearizace systému
===================

stav ``\bm{\dot{x}} = \bm{F}(\bm{x},\bm{u},t)`` lze approximovat jako
```math
\bm{\dot{x}}
=
\bm{F}(\bm{x},\bm{u},t)
≈
\bm{F}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right)
+
\frac{∂\bm{F}}{∂\bm{x}}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right) Δ\bm{x}
+
\frac{∂\bm{F}}{∂\bm{u}}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right) Δ\bm{u}
+
\frac{∂\bm{F}}{∂t}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right) Δt
```
kde
```math
Δ\bm{x} = \bm{x}-\bm{x}_0
\;,\quad 
Δ\bm{u} = \bm{u}-\bm{u}_0
\;,\quad 
Δt = t-t_0
```

---

Pro systém ve tvaru ``\bm{F}(\bm{x},\bm{u},t) = \bm{f}(\bm{x}) + \bm{g}(\bm{x})\bm{u}`` lze vyjádřit jednotlivé členy jako
```math
\begin{aligned}
\bm{F}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right)
&=
\bm{f}\left(\bm{x}_{0}\right)+\bm{g}\left(\bm{x}_{0}\right) \bm{u}_{0}
\\
\frac{∂\bm{F}}{∂\bm{x}}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right) 
&=
\frac{∂\bm{f}}{∂\bm{x}}\left(\bm{x}_{0}\right) + \frac{∂\bm{g}}{∂\bm{x}}\left(\bm{x}_{0}\right) \bm{u}_{0}
\\
\frac{∂\bm{F}}{∂\bm{u}}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right)
&=
\bm{g}\left(\bm{x}_{0}\right)
\\
\frac{∂\bm{F}}{∂t}\left(\bm{x}_{0}, \bm{u}_{0}, t_{0}\right)
&=
\bm{0}
\end{aligned}
```
Při ``\bm{u}_0`` zvoleném jako ``\bm{u}_0 = \bm{0}`` se celá rovnice zjednoduší na
```math
\bm{\dot{x}} ≈ \bm{f}(\bm{x}_0) + \frac{∂\bm{f}}{∂\bm{x}}(\bm{x}_0) (\bm{x}-\bm{x}_0) + \bm{g}(\bm{x}_0) \bm{u}
```

---

Najdeme-li stav ``\bm{x}_0`` splnůjící
```math
\bm{f}(\bm{x}_0) - \frac{∂\bm{f}}{∂\bm{x}}(\bm{x}_0) \bm{x}_0 = \bm{0}
```
můžeme linearizovanou rovnici kolem ``\bm{x}_0 \,,\; \bm{u}_0 = \bm{0}`` psát jako
```math
\bm{\dot{x}}
≈
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

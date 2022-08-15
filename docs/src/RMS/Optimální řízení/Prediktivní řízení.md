Prediktivní řízení diskrétních systémů
======================================

Pro diskrétní systémy ve tvaru
```math
\begin{aligned}
	\bm{x}_{k+1} &= \bm{A}\bm{x}_k + \bm{B}\bm{u}_k \\
	\bm{y}_k &= \bm{C}\bm{x}_k
\end{aligned}
```
existuje forma optimálního řízení, které využívá kvadratického kritéria
```math
J_{i+1}
=
(\bm{y}_{i+1}-\bm{ŷ}_{i+1})^T \bm{Q}_{i+1} (\bm{y}_{i+1}-\bm{ŷ}_{i+1})
+
\bm{u}_i^T\bm{R}_i\bm{u}_i
```
kde ``\bm{ŷ}_{i+1}`` jsou žádané hodnoty výstupů na horizontu
```math
i+1 = k+1,\dots,k+N
```
pro určení optimálního řízení ``\bm{u}^*_i``.

---

Jednotlivé stavy systému ``\bm{x}_i`` můžeme vyjádřit jako
```math
\begin{aligned}
	\bm{x}_{k+1} &= \bm{A}\bm{x}_k + \bm{B}\bm{u}_k \\
	\bm{x}_{k+2} &= \bm{A}^2\bm{x}_k + \bm{A}\bm{B}\bm{u}_k + \bm{B}\bm{u}_{k+1}\\
	\bm{x}_{k+n} &= \bm{A}^n\bm{x}_k + \sum_{j=1}^n \bm{A}^{n-j}\bm{B}\bm{u}_{k+j-1}
\end{aligned}
```
přičemž jeho výstupy nabývají hodnot
```math
\bm{y}_{k+n} = \bm{C}\bm{A}^n\bm{x}_k + \sum_{j=1}^n \bm{C}\bm{A}^{n-j}\bm{B}\bm{u}_{k+j}
```

---

Výstupy ``\bm{y}_i \,,\; i = k+1,\ldots,k+N`` můžeme seřadit do vektoru
```math
\bm{Y} = \bm{f} + \bm{G}\bm{U}
```
kde
```math
\bm{Y}
=
\begin{bmatrix}
	\bm{y}_{k+1} \\
	\vdots \\
	\bm{y}_{k+N}
\end{bmatrix}
\;,\quad 
\bm{f}
=
\begin{bmatrix}
	\bm{C}\bm{A} \\
	\vdots \\
	\bm{C}\bm{A}^N
\end{bmatrix}
\bm{x}_k
\;,\quad 
\bm{G}
=
\begin{bmatrix}
	\bm{C}\bm{B} &  & \bm{0} \\
	\vdots & \ddots & \\
	\bm{C}\bm{A}^{N-1}\bm{B} & \dots & \bm{C}\bm{B}
\end{bmatrix}
\;,\quad 
\bm{U}
=
\begin{bmatrix}
	\bm{u}_{k} \\
	\vdots \\
	\bm{u}_{k+N-1}
\end{bmatrix}
```

---

Pro celý horizont můžeme utvořit kvadratické kritérium optimality
```math
J = (\bm{Ŷ}-\bm{Y})^T \bm{Q} (\bm{Ŷ}-\bm{Y}) + \bm{U}^T\bm{R}\bm{U}
```
kde ``\bm{Q}`` a ``\bm{R}`` jsou váhové matice a ``\bm{Ŷ}`` vektor žádaných výstupů
```math
\bm{Ŷ}
=
\begin{bmatrix}
	\bm{ŷ}_{k+1} \\
	\vdots \\
	\bm{ŷ}_{k+N}
\end{bmatrix}
\;,\quad 
\bm{Q}
=
\begin{bmatrix}
	\bm{Q}_{k+1} &  & \bm{0} \\
	\vdots & \ddots & \\
	\bm{0} & \dots & \bm{Q}_N
\end{bmatrix}
\;,\quad 
\bm{R}
=
\begin{bmatrix}
	\bm{R}_{k} &  & \bm{0} \\
	\vdots & \ddots & \\
	\bm{0} & \dots & \bm{R}_{N-1}
\end{bmatrix}
```
Po dozazení ``\bm{Y} = \bm{f} + \bm{G}\bm{U}`` můžeme najít jeho minimum pomocí podmínky
```math
\frac{∂J}{∂\bm{U}} = \bm{0}
```
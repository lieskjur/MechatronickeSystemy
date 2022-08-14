Prediktivní řízení
==================

Uvažujme lineární diskrétní systém
```math
\begin{aligned}
	\bm{x}_{k+1} &= \bm{A}\bm{x}_k + \bm{B}\bm{u}_k \\
	\bm{y}_k &= \bm{C}\bm{x}_k
\end{aligned}
```
Jeho vyvíjející se stav můžeme vyjádřit jako
```math
\begin{aligned}
	\bm{x}_{k+1} &= \bm{A}\bm{x}_k + \bm{B}\bm{u}_k \\
	\bm{x}_{k+2} &= \bm{A}^2\bm{x}_k + \bm{A}\bm{B}\bm{u}_k + \bm{B}\bm{u}_{k+1}\\
	\bm{x}_{k+n} &= \bm{A}^n\bm{x}_k + \sum_{i=1}^n \bm{A}^{n-i}\bm{B}\bm{u}_{k+i-1}
\end{aligned}
```
přičemž jeho výstupy budou nabývat hodnot
```math
\bm{y}_{k+n} = \bm{C}\bm{A}^n\bm{x}_k + \sum_{i=1}^n \bm{C}\bm{A}^{n-i}\bm{B}\bm{u}_{k+i}
```

Výstupy můžeme seřadit do vektoru
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

Pro vektor žádaných výstupů můžeme v utvořit kvadratické kritérium optimality
```math
J_k = (\bm{Y}-\bm{W})^T \bm{Q} (\bm{Y}-\bm{W}) + \bm{U}^T\bm{P}\bm{U}
```
kde ``\bm{Q}`` a ``\bm{P}`` jsou váhové matice. Po dozazení ``\bm{Y} = \bm{f} + \bm{G}\bm{U}`` můžeme najít jeho minimum pomocí podmínky
```math
\frac{∂J_k}{∂\bm{U}} = \bm{0}
```
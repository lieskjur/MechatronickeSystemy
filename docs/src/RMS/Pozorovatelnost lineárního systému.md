Pozorovatelnost lineárního systému
==================================

## Matice pozorovatelnosti
```math
\bm{O}
=
\begin{bmatrix}
	\bm{C} \\
	\bm{C}\bm{A} \\
	⋮\\
	\bm{C}\bm{A}^{N-1}
\end{bmatrix}
```
Systém je pozorovatelný pokud
```math
\text{rank}(\bm{R}) = n
```

## Gramián pozorovatelnosti

```math
\bm{W}_{o}
=
\int_{0}^{\infty} e^{\bm{A} \tau} \bm{C} \bm{C}^T e^{\bm{A}^T \tau} d \tau
```
Algebraické Riccatiho Rovnice
=============================

## Ve spojitém čase
```math
	\bm{A}^T \bm{P} + \bm{P} \bm{A} - \bm{P} \bm{B} \bm{R}^{-1} \bm{B}^T \bm{P} + \bm{Q} = \bm{0}
```
```math
\bm{K} = \bm{R}^{-1} \bm{B}^T \bm{P}
```

## V diskrétním čase
```math
\bm{P} = \bm{A}^T \bm{P} \bm{A} - (\bm{A}^T \bm{P} \bm{B})(\bm{R} + \bm{B}^T \bm{P} \bm{B})^{-1} (\bm{B}^T \bm{P} \bm{A}) + \bm{Q}
```
```math
\bm{K} = (\bm{R} + \bm{B}^T \bm{P} \bm{B})^{-1} \bm{B}^T \bm{P} \bm{A}
```

---

Obecně hledáme unikátní stabilizující řešení

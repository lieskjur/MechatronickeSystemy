Převod popisu systému ze stavového na přenosový
===============================================

### Výchozí stavový popis
```math
\begin{aligned}
\dot{\bm{x}} &= \bm{A} \bm{x} + \bm{B} \bm{u} \\
\bm{y} &= \bm{C} \bm{x}
\end{aligned}
```

### Přenos systému
```math
\bm{G}(s) = \bm{Y}(s)\,\bm{U}(s)^{-1}
```

## Převod

Laplaceovou transformací stavového popisu obdržíme:
```math
\begin{aligned}
s \bm{X}(s) &= \bm{A} \bm{X}(s) + \bm{B} \bm{U}(s) \\
\bm{Y}(s) &= \bm{C} \bm{X}(s)
\end{aligned}
```

Po úpravě a dosazení získame přenosový popis ve tvaru:
```math
\bm{G}(s) = \bm{C} ( s\bm{I} - \bm{A} )^{-1} \bm{B}
```


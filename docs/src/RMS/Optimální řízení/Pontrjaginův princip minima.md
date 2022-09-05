Pontrjaginův princip minima
===========================

Pokud definujeme tzv. *Hamiltonovu funkci*
```math
H \left(
	\bm{p},\bm{x},\bm{u},τ
\right)
=
L(\bm{x},\bm{u},τ) + \bm{p}^T \bm{f}(\bm{x},\bm{u},τ)
```
kde
```math
\bm{p}^*(τ) = \frac{∂J^*(\bm{x}(τ),τ)}{∂\bm{x}(τ)}
```

můžeme psat *Bellmanovu diferenciální rovnici* [^1] jako
```math
-\frac{∂J^*(\bm{x}(t),t)}{∂τ}
=
\min_{\bm{u}} H (\bm{p}^*(τ),\bm{x},\bm{u},τ)
```

---

na optimální trajektorii ``\bm{x}^*(t)`` nabývá 
```math
\bm{p}^*(t)
=
\left.
\frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}(τ)}
\right|_{\bm{x}(τ) = \bm{x}^*(t)}
```
a optimální řízení ``\bm{u}^*(t)`` lze získat jako
```math
\bm{u}^*(t) = \argmin_{\bm{u}(t)} \bm{H}(\bm{p}^*(t),\bm{x}^*(t),\bm{u}(t),t)
```
přičemž derivace ``\bm{\dot{x}}(t)`` a ``\bm{\dot{p}}(t)`` ve stavu ``\bm{x}(t)`` nabývají hodnot
```math
\begin{aligned}
	\bm{\dot{x}}(τ)
	&=
	\left. \frac{∂H(\bm{p}(τ),\bm{x}(τ),\bm{u}^*(\bm{x}(τ)),τ)}{∂\bm{p}(τ)}
	\right|_{τ=t}  \\
	\bm{\dot{p}}(τ)
	&=
	\left. - \frac{∂H(\bm{p}(τ),\bm{x}(τ),\bm{u}^*(\bm{x}(τ)),τ)}{∂\bm{x}(τ)}
	\right|_{τ=t}
\end{aligned}
```

[^1]: [Belmannův princip optimality](Bellmanův princip optimality.md)
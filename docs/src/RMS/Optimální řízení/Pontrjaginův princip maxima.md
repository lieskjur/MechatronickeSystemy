Pontrjaginův princip maxima
===========================

Předpokládejme systém ve tvaru
```math
\frac{d\bm{x}}{dt} = \bm{f}(\bm{x},\bm{u},t)
```

### Hamiltonián
Optimální řízení dle Pontrjaginova principu maxima vychází z Hamiltoniánu
```math
H(\bm{x},\bm{u},\bm{p},t) = - L(\bm{x},\bm{u},t) + \bm{p}^T\bm{f}(\bm{x},\bm{u},t)
```
, kde ``\bm{p}(t)`` jsou konjugované proměnné ke stavům systému a ``L`` je Lagrangián
(viz. [cílový funkcionál](Kritérium optimality.md)).

### Optimální zásah řízení
Parciální derivací Hamiltoniánu podle stavových proměnných ``\bm{x}(t)`` a k nim konjugovaným ``\bm{p}(t)``:
```math
\begin{align*}
	\frac{\partial H}{\partial \bm{p}} &= \bm{f}(\bm{x},\bm{u},t) = \frac{d\bm{x}}{dt} \\
	\frac{\partial H}{\partial \bm{x}} &= - \frac{d\bm{p}}{dt}
	= - \frac{\partial L(\bm{x},\bm{u},t)}{\partial \bm{x}} + \bm{p}^T \bigg(\frac{\partial \bm{f}(\bm{x},\bm{u},t)}{\partial \bm{x}}\bigg)
\end{align*}
```
získáme soustavu obyčejných diferenciálních rovnic:
```math
\begin{bmatrix}
	\dot{\bm{x}} \\
	\dot{\bm{p}}
\end{bmatrix}
=
\begin{bmatrix}
	\bm{f}(\bm{x},\bm{u},t) \\
	\frac{\partial L(\bm{x},\bm{u},t)}{\partial \bm{x}} - \bm{p}^T \big(\frac{\partial \bm{f}(\bm{x},\bm{u},t)}{\partial \bm{x}}\big)
\end{bmatrix}
```


Řešením této soustavy za okrajových podmínek ``\bm{x}(0)=\bm{x}_0 ,\ \bm{x}(T)=\bm{x}_f`` získáme optimální zásah řízení ``\bm{u}_{opt}(\bm{x},\bm{p},t)``, bude-li splňovat podmínku optimality:
```math
\max_{\bm{u} \in \Pi(t)} H(\bm{x},\bm{u},\bm{p},t)
```
, kde ``Π(t)`` je množina možných zásahů v čase.

---
Při neomezeném zásahu podmínka optimality řízení přechází do tvaru:
```math
\frac{\partial H}{\partial \bm{u}} = \bm{0}
```



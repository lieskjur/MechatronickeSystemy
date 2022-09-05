Bellmanův princip optimality
============================

Pro systému se stavovou zpětnou vazbou ve tvaru ``\bm{\dot{x}}(τ) = \bm{f}(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)`` můžeme definovat pro trajektorii ze stavu ``\bm{x}(t_0) = \bm{x}_0`` do stavu ``\bm{x}(t_1)`` [kritérium optimality](Kritérium optimality.md)
```math
J = ∫_{t_0}^{t_1} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)\,dτ
```
V libovolném čase ``t`` pak můžeme určit optimální řízení ze stavu ``\bm{x}(t)`` do koncového stavu ``\bm{x}(t_1)``
```math
\bm{u}^*(\bm{x}(τ)) = \argmin_{\bm{u}(\bm{x}(τ))} ∫_{t}^{t_1} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)\,dτ
```
*Bellmanovou funkcí* budeme nazýváme kritérium optimality z bodu ``\bm{x}(t)`` do cíle, při optimálním řízení
```math
J^*(\bm{x}(t),t) = \min_{\bm{u}(\bm{x}(τ))} ∫_{t}^{t_1} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)\,dτ
```

---

Pokud hledáme optimální řízení v bodě ``\bm{x}(t)`` můžeme rozdělit celou trajektorii na tři úseky:

2. ``\bm{x}(τ) \,,\; τ ∈ ⟨t_0,t)`` který byl už absolvován (byť neoptimálně)
2. ``\bm{x}(τ) \,,\; τ ∈ ⟨t,t+Δt)`` s kritériem optimality ``\int_t^{t+Δt} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ) + \,dτ``, pro který hledáme optimální řízení
3. ``\bm{x}(τ) \,,\; τ ∈ ⟨t+Δt,t_1⟩`` na kterém předpokládáme optimální řízení a tudíž kritérium optimality ``J^*(\bm{x}(t+Δt),t+Δt)``

![trajektorie](../figures/Trajektorie.png)

S definovanými úseky můžeme Bellmanovu funkci rozepsat do tvaru tzv. *Bellmanovy rovnice*
```math
J^*(\bm{x}(t),t) = \min_{\bm{u}(\bm{x}(τ))} \left( \int_t^{t+Δt} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)\,dτ + J^*(\bm{x}(t+Δt),t+Δt) \right)
```
kde
```math
J^*(\bm{x}(t+Δt),t+Δt)
=
J^*(\bm{x}(t),t)
+
∫_{t}^{t+Δt} \frac{dJ^*(\bm{x}(t),t)}{dτ} dτ
```
Dosazením pak získáme
```math
J^*(\bm{x}(t),t)
=
\min_{\bm{u}(\bm{x}(τ))} \left(
	∫_t^{t+Δt} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)\,dτ
	+
	J^*(\bm{x}(t),t)
	+
	∫_{t}^{t+Δt} \frac{dJ^*(\bm{x}(t),t)}{dτ} dτ
\right)
```

---
Člen ``J^*(\bm{x}(t),t)`` můžeme vykrátit, vzhledem k tomu že předpokládá optimální řízení
```math
0
=
\min_{\bm{u}(\bm{x}(τ))} \left(
	∫_t^{t+Δt} L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)
	+
    \frac{dJ^*(\bm{x}(t),t)}{dτ} \ dτ
\right)
```
a provést úpravu
```math
\frac{dJ^*(\bm{x}(t),t)}{dτ}
=
\frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}(τ)} \bm{f}(\bm{x}(τ),\bm{u}^*(\bm{x}(τ)),τ)
+
\frac{∂J^*(\bm{x}(t),t)}{∂τ}
```
Výsledkem jejího dosazení je rovnice [^1]
```math
0
=
\min_{\bm{u}}
∫_t^{t+Δt}
L(\bm{x},\bm{u},τ) + \frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}}\bm{f}(\bm{x},\bm{u},τ) + \frac{∂J^*(\bm{x}(t),t)}{∂τ}
\ dτ
```
pro kterou, aby byla splněna s ``Δt→0`` musí platit tzv *Bellmanova diferenciální rovnice*
```math
\left. -\frac{∂J^*(\bm{x}(t),t)}{∂τ} \right|_{τ=t}
=
\min_{\bm{u}(\bm{x}(t))} \left(
	L(\bm{x}(t),\bm{u}(t),t)
	+
	\left.
		\frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}(τ)}
	\right|_{τ=t}
	\bm{f}(\bm{x}(t),\bm{u}(t),t)
\right)
```
kde je integrál approximován pomocí Reimannova součtu a ``Δt`` vykráceno [^2].

Z této rovnice lze přímo odvodit [LQR](LQR.md) a s úpravou [Pontrjaginův princip minima](Pontrjaginův princip minima.md).

[^1]: zde pro přehlednost a úsporu místa, vynecháváme argumenty funkcí ``\bm{x}(τ)`` a ``\bm{u}(\bm{x}(τ))``
[^2]: člen ``\frac{∂J^*(\bm{x}(t),t)}{∂τ}`` můžeme vyjmout z minima a přesunout na levou stranu rovince, vzhledem k tomu, že předpokládá optimální řízení.
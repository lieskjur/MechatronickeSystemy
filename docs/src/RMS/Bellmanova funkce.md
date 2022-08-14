Bellmanova funkce ve spojitém čase
==================================

Pro systému ve tvaru ``\bm{\dot{x}}(τ) = \bm{f}(\bm{x}(τ),\bm{u}(τ),τ)`` můžeme definovat pro trajektorii ze stavu ``\bm{x}(t_0) = \bm{x}_0`` do času ``t_1`` [kritérium optimality](Kritérium Optimality.md) ve tvaru
```math
J = ∫_{t_0}^{t_1} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ
```
V libovolném čase ``t`` pak můžeme určit optimální řízení ze stavu ``\bm{x}(t)`` do koncového času ``t_1``
```math
\bm{u}^*(\bm{x}(τ),τ) = \argmin_{\bm{u}(τ)} ∫_{t}^{t_1} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ
```
*Bellmanovou funkcí* budeme nazýváme kritérium optimality z bodu ``\bm{x}(t)`` do cíle, při optimálním řízení
```math
J^*(\bm{x}(t),t) = \min_{\bm{u}(τ)} ∫_{t}^{t_1} L(\bm{x}(τ),\bm{u}^*(\bm{x}(τ),τ))\,dτ
```

---

Pokud hledáme optimální řízení v bodě ``\bm{x}(t)`` můžeme rozdělit celou trajektorii na tři úseky:

2. ``\bm{x}(τ) \,,\; τ ∈ ⟨t_0,t)`` který byl už absolvován (byť neoptimálně)
2. ``\bm{x}(τ) \,,\; τ ∈ ⟨t,t+Δt)`` s kritériem optimality ``\int_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ``, pro který hledáme optimální řízení
3. ``\bm{x}(τ) \,,\; τ ∈ ⟨t+Δt,t_1⟩`` na kterém předpokládáme optimální řízení a tudíž kritérium optimality ``J^*(\bm{x}(t+Δt),t+Δt)``

![trajektorie](figures/Trajektorie.png)

S definovanými úseky můžeme Bellmanovu funkci rozepsat do tvaru tzv. *Bellmanovy rovnice*
```math
J^*(\bm{x}(t),t) = \min_{\bm{u}(τ)} \left( \int_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ + J^*(\bm{x}(t+Δt),t+Δt) \right)
```
kde
```math
J^*(\bm{x}(t+Δt),t+Δt)
=
J^*(\bm{x}(t),t)
+
∫_{t}^{t+Δt} \frac{∂J^*(\bm{x}(t),t)}{∂τ} dτ
```
Dosazením pak získáme
```math
J^*(\bm{x}(t),t)
=
\min_{\bm{u}(τ)} \left(
	∫_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ
	+
	J^*(\bm{x}(t),t)
	+
	∫_{t}^{t+Δt} \frac{∂J^*(\bm{x}(t),t)}{∂τ} dτ
\right)
```

---
Člen ``J^*(\bm{x}(t),t)`` můžeme vykrátit, vzhledem k tomu že předpokládá optimální řízení
```math
0
=
\min_{\bm{u}(τ)} \left(
	∫_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ),τ)
	+
    \frac{∂J^*(\bm{x}(t),t)}{∂τ} \ dτ
\right)
```
a pokud ``\bm{u}^*(\bm{x}(τ),τ)`` nezávisí explicitně na čase ``τ``, můžeme provést úpravu
```math
\frac{∂J^*(\bm{x}(t),t)}{∂τ}
=
\frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}(τ)} \bm{f}(\bm{x}(τ),\bm{u}(τ),τ)
```
Výsledkem jejího dosazení je rovnice vázané variační úlohy ve tvaru
```math
0
=
\min_{\bm{u}(τ)}
∫_t^{t+Δt}
\underbrace{
L(\bm{x}(τ),\bm{u}(τ),τ) + \frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}(τ)}\bm{f}(\bm{x}(τ),\bm{u}(τ),τ)
}_{F(\bm{x}(τ),\bm{u}(τ),τ)}
\ dτ
```
ze které lze přímo odvodit [LQR](LQR.md) a [Pontrjaginův princip minima](Pontrjaginův princip minima.md).
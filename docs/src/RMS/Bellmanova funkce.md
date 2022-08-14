Bellmanova funkce ve spojitém čase
==================================

Optimální řízení ``\bm{u}_\text{opt}(τ)`` systému ve tvaru ``\bm{\dot{x}} = \bm{f}(\bm{x}(τ),\bm{u}(τ))`` definujeme jako řízení, které minimalizuje kritérium optimality závislé na počátečním stavu ``\bm{x}_0 = \bm{x}(t_0)`` a funkci ``\bm{u}(τ)``
```math
J(\bm{x}_0,\bm{u}(τ)) = ∫_{t_0}^{t_1} L(\bm{x}(τ),\bm{u}(τ))\,dτ
```
Cenu optimální trajektorie pak můžeme definovat jako
```math
V(\bm{x}_0) = \min_{\bm{u}(τ)} J(\bm{x}_0,\bm{u}(τ))
```
kde
```math
\bm{u}_\text{opt}(τ) = \argmin_{\bm{u}(τ)} J(\bm{x}_0,\bm{u}(τ))
```
---

Dále můžeme definovat *cenu do cíle* z bodu ``\bm{x}(t)``
```math
J^*(\bm{x}(t),\bm{u}(τ)) = ∫_t^{t_1} L(\bm{x}(τ),\bm{u}(τ))\,dτ
```
a tzv. *Bellmanovu funkci*, která je jejím minimem
```math
V^*(\bm{x}(t)) = \min_{\bm{u}(τ)}\ J^*(\bm{x}(t),\bm{u}(τ))
```
U té víme, že pokud ``\bm{x}(t)`` leží na optimální trajektorii, řízení ``\bm{u}_\text{opt}^*(τ)`` získané jejím prostředkem bude splňovat
```math
\bm{u}_\text{opt}^*(τ) = \bm{u}_\text{opt}(τ)
\;,\quad 
τ ∈ ⟨t,t_1⟩
```

---

Pokud hledáme optimální řízení v bodě ``\bm{x}(t)`` můžeme rozdělit celou trajektorii na tři úseky (viz obrázek). Nejdříve už absolvovaný úsek ``τ ∈ ⟨t_0,t)``, úsek ``τ ∈ ⟨t,t+Δt⟩`` ``Δt →0`` s cenou ``\int_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ))\,dτ`` a zbytek trajektorie ``τ ∈ (t+Δt,t_1⟩`` na kterém předpokládáme optimální řízení a tudíž cenu ``V^*(\bm{x}(t+Δt))``.
![trajektorie](figures/Trajektorie.png)

Problém nalezení optimální ceny do cíle z bodu ``\bm{x}(t)`` pak můžeme pak zapsat jako tzv. *Bellmanovu rovnici*
```math
V^*(\bm{x}(t)) = \min_{\bm{u}(τ)} \left( \int_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ))\,dτ + V^*(\bm{x}(t+Δt)) \right)
```
kde
```math
V^*(\bm{x}(t+Δt))
=
V^*(\bm{x}(t))
+
∫_{t}^{t+Δt} \frac{∂V^*(\bm{x}(t))}{∂τ} dτ
```
Při optimálním řízení je vstup funkcí stavu díky čemu můžeme provést úpravu
```math
V^*(\bm{x}(t+Δt))
=
V^*(\bm{x}(t))
+
∫_{t}^{t+Δt} \frac{∂V^*(\bm{x}(t))}{∂\bm{x}}\bm{f}(\bm{x}(τ),\bm{u}^*_\text{opt}(τ)) dτ
```
Dále však nebude nutno psát ``\bm{u}^*_\text{opt}(τ)`` jelikož bude totožné s minimalizujícím ``\bm{u}(τ)``. Dosazením pak získáme
```math
V^*(\bm{x}(t))
=
\min_{\bm{u}(τ)} \left(
	∫_t^{t+Δt} L(\bm{x}(τ),\bm{u}(τ))\,dτ
	+
	V^*(\bm{x}(t))
	+
	∫_{t}^{t+Δt} \frac{∂V^*(\bm{x}(t))}{∂\bm{x}}\bm{f}(\bm{x}(τ),\bm{u}(τ)) dτ
\right)
```
přičemž ``V^*(\bm{x}(t))`` můžeme vykrátit, vzhledem k tomu předpokládá optimální řízení. Když po té dáme zbylé členy pod jeden integrál, můžeme psát
```math
0
=
\min_{\bm{u}(τ)}
∫_t^{t+Δt}
L(\bm{x}(τ),\bm{u}(τ)) + \frac{∂V^*(\bm{x}(t))}{∂\bm{x}}\bm{f}(\bm{x}(τ),\bm{u}(τ))
\ dτ
```
S touto rovnicí budeme dále nakládat při odvozování **LQR** a **Pontrjaginova principu minima**
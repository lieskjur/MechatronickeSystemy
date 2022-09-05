Linear Quadratic Regulator (LQR)
================================

LQR je určen pro regulaci lineárního systému se stavovou zpětnou vazbou ve tvaru
```math
\bm{\dot{x}}(τ) = \bm{A} \, \bm{x}(τ) + \bm{B} \, \bm{u}(\bm{x}(τ))
```
s kvadratickým [kritériem optimality](Kritérium optimality.md)
```math
J = \int_{-∞}^{∞}
\underbrace{
\bm{x}(τ)^T \bm{Q} \, \bm{x}(τ) + \bm{u}(\bm{x}(τ))^T \bm{R} \, \bm{u}(\bm{x}(τ))
}_{L(\bm{x}(τ),\bm{u}(\bm{x}(τ)),τ)} \, dτ
```
kde
```math
\bm{Q} = \bm{Q}^T ⪰ 0
\;,\quad 
\bm{R} = \bm{R}^T ⪰ 0
```

---

Jeho syntéza je založena na nalezní řešení *Bellmanovy diferenciální rovnice* [^1]
```math
\left. -\frac{∂J^*(\bm{x}(t),t)}{∂τ} \right|_{τ=t}
=
\min_{\bm{u}} \left(
	L(\bm{x}(t),\bm{u}(t),t)
	+
	\left.
		\frac{∂J^*(\bm{x}(t),t)}{∂\bm{x}(τ)}
	\right|_{τ=t}
	\bm{f}(\bm{x}(t),\bm{u}(t),t)
\right)
```
s *Bellmanovou funkcí* [^1] ve tvaru
```math
J^*(\bm{x}(t),t) = \bm{x}(t)^T \bm{S} \, \bm{x}(t) \;,\quad \bm{S} = \bm{S}^T
```

---

Po dosazení výše uvedených tvarů Bellmanovy funkce, stavového popisu systému a Lagrangiánu, získáváme rovnici [^2]
```math
0
=
\min_{\bm{u}} \left(
\bm{x}^T \bm{Q} \, \bm{x} + \bm{u}^T \bm{R} \, \bm{u} + 2 \bm{x}^T \bm{S} ( \bm{A} \bm{x} + \bm{B} \bm{u} )
\right)
```
přičemž z podmínky lokálního extrému
```math
\frac{∂}{∂\bm{u}} \left(
\bm{x}^T \bm{Q} \, \bm{x} + \bm{u}^T \bm{R} \, \bm{u} + 2 \bm{x}^T \bm{S} ( \bm{A} \bm{x} + \bm{B} \bm{u} )
\right) 
=
0
```
lze vyjádřit optimální řízení ``\bm{u}^*(\bm{x}(t))``
```math
\bm{u}^* = - \bm{R}^{-1} \bm{B}^T \bm{S} \, \bm{x} 
```
které když dosadíme, získáme rovnici
```math
0
=
\bm{x}^T \bm{Q} \, \bm{x} + \bm{x}^T \bm{S} \bm{B} \bm{R}^{-1} \bm{R} \bm{R}^{-1} \bm{B}^T \bm{S} \, \bm{x} + 2 \bm{x}^T \bm{S} ( \bm{A} \bm{x} - \bm{B} \bm{R}^{-1} \bm{B}^T \bm{S} \, \bm{x} )
```

---

Tu lze dále upravit na
```math
0
=
\bm{x}(t)^T \left(
	\bm{Q} - \bm{S}\bm{B}\bm{R}^{-1} \bm{B}^T \bm{S} + \bm{S}\bm{A} + \bm{A}^T \bm{S}
\right) \bm{x}(t)
```
která platí pro libovolné ``\bm{x}(t)`` pokud je ``\bm{S}`` řešením tzv. *Continuous Algebraic Riccati Equation (C.A.R.E.)*
```math
\bm{Q} - \bm{S}\bm{B}\bm{R}^{-1} \bm{B}^T \bm{S} + \bm{S}\bm{A} + \bm{A}^T \bm{S}
= 0
```
[^1]: [Belmannův princip optimality](Bellmanův princip optimality.md)
[^2]: v tomto oddílu pro přehlednost a úsporu místa vynecháváme argumenty funkcí ``\bm{x}(t)`` a ``\bm{u}(\bm{x}(t))``
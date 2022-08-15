Pontrjaginův princip minima
===========================

Při Pontrjaginova principu minima nahrazujeme funkci ``F(\bm{x}(τ),\bm{u}(τ),τ)`` ve variační úloze, odvozené z [Bellmanova principu optimality](Bellmanův princip optimality.md), Hamiltoniánem
```math
H(\bm{x}(τ),\bm{u}(τ),\bm{λ}(τ),τ) = L(\bm{x}(τ),\bm{u}(τ),τ) + \bm{\lambda}(τ)^T \bm{f}(\bm{x}(τ),\bm{u}(τ),τ)
```
kde (stavový) vektor multiplikátorů ``\bm{λ}(τ)`` zastupuje okamžitou parciální derivaci Bellmanovy funkce
```math
\bm{λ}(τ)^T = \frac{∂J^*(\bm{x}(τ),t)}{∂\bm{x}(τ)}
```
Tzn. řešíme vázanou variační úlohu
```math
0
=
\min_{\bm{u}(τ)}
∫_t^{t+Δt}
H(\bm{x}(τ),\bm{u}(τ),\bm{λ}(\bm{u}(τ)),τ)
\ dτ
```
s pevným koncem ``\bm{x}(t)`` kde funkce ``\bm{\dot{x}}(τ) = \bm{f}(\bm{x}(τ),\bm{u}(τ),τ)`` je algebraická vedlejší podmínka.

---

Optimální trajektorii ``\bm{x}(τ) \,,\; τ ∈ ⟨t_0,t_1⟩`` lze získat zavedením soustavy
```math
\begin{aligned}
	\bm{\dot{x}} &= \frac{∂H}{∂\bm{λ}(τ)}(\bm{x}(τ),\bm{u}^*(\bm{x}(τ),τ),\bm{λ}(τ),τ) \\
	\bm{\dot{λ}} &= - \frac{∂H}{∂\bm{x}(τ)}(\bm{x}(τ),\bm{u}^*(\bm{x}(τ),τ),\bm{λ}(τ),τ)
\end{aligned}
```
kde
```math
\bm{u}^*(\bm{x}(τ),τ) = \argmin_{\bm{u}(τ)} \bm{H}(\bm{x}(τ),\bm{u}(τ),\bm{λ}(τ),τ)
```
je optimální řízení. Počáteční podmínku v podobě pevného konce ``\bm{x}(t_0) = \bm{x}_0`` z variační úlohy většinou doplňujeme podmínkou dosažení cíle ``\bm{x}(t_1) = \bm{x}_1`` a hledáme druhou počáteční podmínku ``\bm{λ}(t_0) = \bm{λ}_0``, která by ho zaručila.
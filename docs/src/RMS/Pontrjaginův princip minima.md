Pontrjaginův princip minima
===========================

Při Pontrjaginova principu minima nahrazujeme ``F(\bm{x}(τ),\bm{u}(τ),τ)`` ve variační úloze, odvozené z [Bellmanovy funkce](Bellmanova funkce.md), Hamiltoniánem
```math
H(\bm{x}(τ),\bm{u}(τ),\bm{λ}(τ),τ) = L(\bm{x}(τ),\bm{u}(τ),τ) + \bm{\lambda}^T \bm{f}(\bm{x}(τ),\bm{u}(τ),τ)
```
kde (stavový) vektor multiplikátorů ``\bm{λ}(τ)`` zastupuje okamžitou parciální derivaci Bellmanovy funkce
```math
\bm{λ}(τ)^T = \frac{∂J^*(\bm{x}(τ),t)}{∂\bm{x}(τ)}
```

---
Optimální trajektorii ``\bm{x}(τ) \,,\; τ ∈ ⟨t_0,t_1⟩`` lze získat zavedením soustavy
```math
\begin{aligned}
	\bm{\dot{x}} &= \frac{∂H}{∂\bm{λ}(τ)}(\bm{x}(τ),\bm{u}^*(\bm{x}(τ),τ),\bm{λ}(τ),τ) \\
	\bm{\dot{λ}} &= - \frac{∂H}{∂\bm{x}(τ)}(\bm{x}(τ),\bm{u}^*(\bm{x}(τ),τ),\bm{λ}(τ),τ)
\end{aligned}
```
kde optimální řízení ``\bm{u}^*(\bm{x}(τ),τ)`` lze určit jako
```math
\bm{u}^*(\bm{x}(τ),τ) = \argmin_{\bm{u}(τ)} \bm{H}(\bm{x}(τ),\bm{u}(τ),\bm{λ}(τ),τ)
```

a vyřešením úlohy kde některé okrajové podmínky
```math
\bm{x}(t_0) = \bm{x}_0
\;,\quad 
\bm{x}(t_1) = \bm{x}_1
\;,\quad 
\bm{λ}(t_0) = \bm{λ}_0
\;,\quad
\bm{λ}(t_1) = \bm{λ}_1
```
jsou dány a zbylé je nutno určit.
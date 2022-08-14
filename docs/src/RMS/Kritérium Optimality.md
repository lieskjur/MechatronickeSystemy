Kritérium optimality 
====================

```math
J = \int_{t_0}^{t_1} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ
```
kde ``L(\bm{x}(τ),\bm{u}(τ),τ)`` je Lagrangián

- ``L = \bm{u}(τ)^T \bm{R}\,\bm{u}(τ)`` - spotřeby energie
- ``L = \bm{x}(τ)^T \bm{Q}\,\bm{x}(τ)`` - odchýlení od počátku
- ``L = \|\bm{u}(τ)\|`` - spotřeby paliva
- ``L = 1`` - času

přičemž vyjmenováné formy můžeme sčítat

## Dosažení koncového stavu

Do kritéria optimality s konečným horizontem se často zahrňuje i funkce přiblížení k cíly
```math
Φ(\bm{x}(t_1),t_1) = (\bm{x}_f - \bm{x}(t_1))^T (\bm{x}_f - \bm{x}(t_1))
```
kdy
```math
J = Φ(\bm{x}(t_1),t_1) + \int_{t_0}^{t_1} L(\bm{x}(τ),\bm{u}(τ),τ)\,dτ
```
Kritérium optimality 
====================

```math
J = \int_{t_0}^{t_1} L(\bm{x},\bm{u},t)\,dt
```
kde ``\bm{L}`` je Lagrangián

- ``L = \bm{u}^T \bm{R}\,\bm{u}`` - spotřeby energie
- ``L = \bm{x}^T \bm{Q}\,\bm{x}`` - odchýlení od počátku
- ``L = \|\bm{u}\|`` - spotřeby paliva
- ``L = 1`` - času

## Dosažení koncového stavu

Do kritéria optimality s konečným horizontem se často zahrňuje i funkce přiblížení k cíly
```math
Φ(\bm{x}(t_1),t_1) = (\bm{x}_f - \bm{x}(t_1))^T (\bm{x}_f - \bm{x}(t_1))
```
kdy
```math
J = Φ(\bm{x}(t_1),t_1) + \int_{t_0}^{t_1} L(\bm{x},\bm{u},t)\,dt
```
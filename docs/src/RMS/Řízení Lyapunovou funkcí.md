Řízení Lyapunovou funkcí
========================

Předpokládejme systém ve tvaru ``\bm{\dot{x}} = \bm{f}(\bm{x},\bm{u})``. Stavovou zpětnou vazbou jej můžeme převést do tvaru ``\bm{\dot{x}} = \bm{f}(\bm{x},\bm{u}(\bm{x}))`` pro který můžeme hledat [Lyapunovu funkci](Stabilita systémů/Stabilita podle Lyapunova.md) ``V(\bm{x}) ≻ 0 \,,\; \dot{V}(\bm{x}) ⪯ 0``.


Pokud jsme schopni nalézt funkci splňující ``V(\bm{x}) ≻ 0`` můžeme řízení optimalizovat na základě vztahu
```math
\dot{V}(\bm{x}) = \frac{∂V(\bm{x})}{∂\bm{x}}\bm{f}(\bm{x},\bm{u}(\bm{x}))
```
kdy hledáme optimální řízení ``\bm{u}*(\bm{x})``
```math
\bm{u}^*(\bm{x}) = \argmin_{\bm{u}(\bm{x})} \frac{∂V(\bm{x})}{∂\bm{x}}\bm{f}(\bm{x},\bm{u}(\bm{x}))
```
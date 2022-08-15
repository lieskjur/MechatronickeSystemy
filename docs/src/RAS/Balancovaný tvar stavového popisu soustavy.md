Balancovaný tvar stavového popisu soustavy
==========================================

*''Consider a case when controllability and observability grammians are equal and diagonal. The diagonality means that each state has its own and independent measure of controllability and observability (which is the diagonal value of the grammians). The equality of grammians means that each state is equally controllable and observable or, in terms of structures, each mode is equally controllable and observable (excited to the same degree as it is sensed). The equality and diagonality of grammians is a feature of special usefulness—this allows us to evaluate each state (or mode) separately, and to determine their values for testing and for control purposes. Indeed, if a state is weakly controllable and, at the same time, weakly observable, it can be neglected without impacting the accuracy of analysis, dynamic testing, or control design procedures. On the other hand, if a state is strongly controllable and strongly observable, it must be retained in the system model in order to preserve accuracy of analysis, test, or control system design. Knowing the importance of the diagonal and equal grammians, we proceed to their definition and determination.''*

*''The system triple ``(\mathrm{A}, \mathrm{B}, \mathrm{C})`` is open-loop balanced, if its controllability and observability grammians are equal and diagonal, as defined by Moore in [109]''*
```math
\begin{aligned}
\mathrm{W}_{\mathrm{c}} &=\mathrm{W}_{\mathrm{o}}=\Gamma \\
\Gamma &=\operatorname{diag}\left(\gamma_{1}, \ldots, \gamma_{\mathrm{N}}\right) \\
\gamma_{\mathrm{i}} & \geq 0, \quad \mathrm{i}=1, \ldots, \mathrm{N} .
\end{aligned}
```

The matrix ``\Gamma`` is diagonal, and its diagonal entries ``\gamma_{i}`` are called Hankel singular values of the system (which were earlier introduced as eigenvalues of the product of the controllability and observability grammians).
''}
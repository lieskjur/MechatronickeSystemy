# Snižování vibrací (low-authority control) versus řízení pohybu/polohy (high-authority control)

*The control forces that act on a structure can be divided into tracking forces and damping forces. The tracking forces move the structure to follow a target and the damping forces act on the structure to suppress vibrations. Typically, the tracking forces are significantly larger than the damping forces. For this reason a structural controller can be divided into low- and high-authority controllers. The low-authority controller is the one that uses a limited input (torque, force) to control the vibrations of a system.*

*the control system action on a flexible structure can be separated into two stages: stage one, when damping is added to a structure and vibrations are suppressed showing faster decay; and stage two, of “total” system motion where the damping is little affected.*

## low-authority control

* často využívá kolokace aktuátoru a senzoru, pro zvýšení robustnosti a decentralizované přístupy k řízení.
* Positive Position Feedback, Integral Force Feedback

## high-authority control

* Rekonstrukce stavů pomocí stavového pozorovatele
* Computed Torques, LQG (LQR + Kalman filtr)

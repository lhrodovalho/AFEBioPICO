# FILTER

Table of contents
==============================
<!--ts-->
  * [Description](#Description)
    * [Components](#Components)
  * [Simulation](#Simulation)
  * [Target Performance Summary](#Target-Performance-Summary)  
  * [References](#References)
<!--te-->

![image](https://user-images.githubusercontent.com/5855935/131169297-3e5da296-6070-44ba-ab23-63b7ad8618f4.png)

Filter: Very low-frequency Gm-C filter with ultra-low-transconductance amplifier [1] and active source degeneration for improved linearity [2] 

The Filter is designed with with ultra-low-transconductance amplifiers due to the low frequencies necessary to achieve the specification. It is a bandpass filter and its parameters are described below.

<img src="https://render.githubusercontent.com/render/math?math=\frac{V_{out}}{V_{in}} = A \frac{s\frac{\omega_o}{Q}}{s^{2}+s\frac{\omega_o}{Q}+\omega_{o}^{2}}">
<img src="https://render.githubusercontent.com/render/math?math=A = \frac{g_{m1}}{g_{m2}}">
<img src="https://render.githubusercontent.com/render/math?math=\omega_o = \sqrt{\frac{g_{m1}g_{m3}}{C_{1}C_{2}}}">
<img src="https://render.githubusercontent.com/render/math?math=Q = \sqrt{\frac{C_1}{C_2}}\frac{\sqrt{g_{m1}g_{m3}}}{g_{m2}}">

#### Components
- [OTA - gm1]()
- [OTA - gm2]()
- [OTA - gm3]() 
- [Cap MIM M3(Capacitor)]()

### Simulation

The following simulations were done for this design:
- [DC](#DC)
- [Transfer Function](#Transfer-Function)
- [Noise](#Noise)
(...)

#### Transfer Function

The Transfer Function was simulated in a range a of frequencies from 0.01Hz to 1MHz charged with an output capacitance of 1pF. The following spice code was used in order to simulate the circuit and the results can be observed in the picture.

```
.control
ac dec 0.01 1MEG 100
plot ac vdb(out) xlog
```

![image](https://user-images.githubusercontent.com/5855935/131369790-39ad12cd-2d8b-4628-9e1f-741106b05be0.png)

#### Noise

### Target Performance Summary

(...)

### References

[1] Arnaud, Alfredo, Rafaella Fiorelli, and Carlos Galup-Montoro. "Nanowatt, sub-nS OTAs, with sub-10-mV input offset, using series-parallel current mirrors." IEEE Journal of Solid-State Circuits 41.9 (2006): 2009-2018.

[2] Krummenacher, Francois, and Norbert Joehl. "A 4-MHz CMOS continuous-time filter with on-chip automatic tuning." IEEE Journal of Solid-State Circuits 23.3 (1988): 750-758.

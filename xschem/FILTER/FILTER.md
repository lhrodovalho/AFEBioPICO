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

![image](https://user-images.githubusercontent.com/5855935/131997610-9eb80a57-17ee-4936-94ac-c58672145bd7.png)

Filter: Very low-frequency Gm-C filter with ultra-low-transconductance amplifier [1] and active source degeneration for improved linearity [2] 

The Filter is designed with with ultra-low-transconductance amplifiers due to the low frequencies necessary to achieve the specification. It is a bandpass filter and its parameters are described in the figure above.

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

# Variable Gain Amplifier - VGA

Table of contents
==============================
<!--ts-->
  * [Description](#Description)
    * [Components](#Components)
  * [Simulation](#Simulation)
  * [Target Performance Summary](#Target-Performance-Summary)  
  * [References](#References)
<!--te-->

The VGA is designed with 2 stages and an [Analog Mux]() to select a ``gain between 20, 40 or 60dB``. The output DC coupling is also accomplished by using [pseudo-resistors](). The [OTA]() used for this design is the same as the one used for the [LNA](https://github.com/lhrodovalho/AFEBioPICO/blob/testiferreirajv-patch-1/xschem/LNA/LNA.md), but the dimensions of the transistors were reduced, because this block is not the bottleneck of noise requirements. 

![image](https://user-images.githubusercontent.com/5855935/131997061-ceb1ed26-5c17-4558-9f07-87be7ef0134b.png)

VGA: Variable Gain Amplifier based on cascaded inverting amplifiers and folded cascode OTAs with class AB output stage [2]   

#### Components
- [OTA]() 
- [Analog Mux (AMUX)](AMUX)
- [Cap MIM M3(Capacitor)]()
- [Pseudo-Resistor]()

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
![image](https://user-images.githubusercontent.com/5855935/131368608-98b8b7ee-fda5-42a7-baaa-51f0b9bbae24.png)


#### Noise

### Target Performance Summary

(...)

### References


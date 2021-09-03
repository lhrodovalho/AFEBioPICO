# Low-Noise Amplier - LNA

Table of contents
==============================
<!--ts-->
  * [Description](#Description)
    * [Components](#Components)
  * [Simulation](#Simulation)
  * [Target Performance Summary](#Target-Performance-Summary)  
  * [References](#References)
<!--te-->

### Description

The LNA is designed with a voltage subtractor topology using capacitive impedances with a `nominal gain of 20dB`. Due to the low frequency corner specification, the output DC coupling is accomplished using `high resistance pseudo-resistors`. A symmectrical OTA is used as the transconductor element. The OTA transistors are big in order to reduce the flicker noise (1/f).

![image](https://user-images.githubusercontent.com/5855935/131168906-d9f4932c-202e-4b55-a1dd-8a790dc35118.png) 

Low-Power Low-Noise Amplifier (LNA) [1]

#### Components
- [OTA]() 
- [Cap MIM M3(Capacitor)]()
- [Pseudo-Resistor]()

### Simulation

The following simulations were done for this design:
- [DC](#DC)
- [Transfer Function](#Transfer-Function)
- [Noise](#Noise)

#### Transfer Function

The Transfer Function was simulated in a range a of frequencies from 0.01Hz to 1MHz charged with an output capacitance of 1pF. The following spice code was used in order to simulate the circuit and the results can be observed in the picture.

```
.control
ac dec 0.01 1MEG 100
plot ac vdb(out) xlog
```
![image](https://user-images.githubusercontent.com/5855935/131365854-c3bfed69-5844-4ae5-8cf5-ccefbdd8563a.png)

#### Noise

The Noise was simulated in a range a of frequencies from 0.05Hz to 100Hz. The following spice code was used in order to simulate the circuit and an input referred noise of ``&mu;V`` was obtained.

```
.noise v(out)  VIN  dec 100 0.05 100
print inoise_total
set sqrnoise
plot inoise_spectrum
```

### Target Performance Summary

(...)

### References

[1] Harrison, Reid R., et al. "A low-power integrated circuit for a wireless 100-electrode neural recording system." IEEE Journal of Solid-State Circuits 42.1 (2006): 123-133.

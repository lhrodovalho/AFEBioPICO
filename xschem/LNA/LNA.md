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
- [DC]()
- [Transfer Function]()
(...)

### Target Performance Summary

(...)

### References

[1] Harrison, Reid R., et al. "A low-power integrated circuit for a wireless 100-electrode neural recording system." IEEE Journal of Solid-State Circuits 42.1 (2006): 123-133.

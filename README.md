# AFEBioPICO

![GitHub](https://img.shields.io/github/license/lhrodovalho/AFEBioPICO?style=plastic)
![GitHub repo size](https://img.shields.io/github/repo-size/lhrodovalho/AFEBioPICO?style=plastic)
![GitHub last commit](https://img.shields.io/github/last-commit/lhrodovalho/AFEBioPICO?style=plastic)
![Tech](https://img.shields.io/badge/Tech-sky130A-blue?style=plastic)
![GitHub tapeout](https://img.shields.io/date/1634326346?label=tapeout%20in&style=plastic)

<img align="right" width="200" src="https://user-images.githubusercontent.com/5855935/131919296-44c57e7a-2a92-46f5-af4d-672fbe1cb04c.png" alt="logo">

An <b>Ultra-Low-Power Analog Front-End for Bio-Signals</b> intended to be integrated for the SSCS Platform for IC Design Outreach (PICO) Open-Source Design Contest. </br>




Table of contents
==============================
<!--ts-->
  * [Summary](#Summary)
    * [Motivation](#Motivation)
  * [Description](#Description)
    * [Block Diagram](#Block-Diagram)
    * [Schematics and Layouts](#Schematics-and-Layouts)
    * [Simulation Results](#Simulation-Results)
    * [Target Performance Summary](#Target-Performance-Summary)
  * [Team Members](#Team-Members)  
  * [References](#References)
<!--te-->

Summary
=======

This design contains an analog signal processing block that:
-  filters DC inputs;
-  amplifies the AC components with an user selected voltage gain; and
-  filters frequencies outside the bio-signals bandwidth. </br>

In order to bias the circuit a current reference is also provided. All this process is done while consuming only 5 &mu;W for a 1.8 V supply voltage.

### Motivation

As a consequence of the population aging, chronic diseases are becoming the significant cause of death in most countries. Unfortunately, intermittent and asymptomatic features of many chronic disorders turn the task of diagnosis into a real challenge. Due to the new trends of wearable devices for biosensing, predicting and detecting the exact moment that a chronic disease is happening became a possible solution. Hence, it can do a better and timely diagnostic. Therefore, in this project, we propose an ultra-low-power analog front-end to integrate a system for long-term monitoring. We can apply this work to several bio-signals, such as ECG, EMG, and EEG.

Description
===========

The analog front-end for bio-signals main goal is to amplify its inputs, and filter interference and noise without losing resolution, so that the processed signals information can be properly extracted.


### Block Diagram

<img align=left width="550" src="https://user-images.githubusercontent.com/5855935/132361366-0e53de44-0f2a-4ce3-8b64-24c5ce326807.png" alt="block-diagram">

Our design is composed of four blocks. The `Low-Power Low-Noise Amplifier (LNA)` [1] simultaneously filters the input DC signal and amplifies it. Normally, electrodes output an unknown DC offset which must be canceled, otherwise it would be amplified together with the input signal and saturate the output, causing distortion.

After the first gain stage, a variable gain stage is needed, since the biomedical signals have a varying amplitude due to electrode position and the user own characteristics. This variable gain stage is implemented with a `Variable Gain Amplifier (VGA)` based on cascaded inverting operational amplifiers. These operational amplifiers should have large output voltage excursions, and be capable of driving a relatively large resisitive load as efficiently as possible, so it should have a  class AB output stage [2].

Finally, the VGA output signal must be filtered to limit the noise and interference from unwanted frequencies. Since the biomedical signals usually have a very low upper cutoff frequency, the filters should be made of very low transconductance amplifiers [3] to implement very large time constants with reasonable sized integrated capacitors. Additionally, the `Filter` output must be as linear as possible to minimize distortion, so its transconductors must have improved linearity [4].

All these analog circuit blocks have in common the need of a biasing current. We chose a resistorless `Self-Biased Current Reference Source (SBCS)` [5], since integrated resistors exhibit a larger process variability than MOS transistors.


<!--
### Schematics

- [Low Noise Amplifier (LNA)](https://github.com/lhrodovalho/AFEBioPICO/blob/main/xschem/LNA/LNA.md)
- [Variable Gain Amplifier (VGA)](https://github.com/lhrodovalho/AFEBioPICO/blob/main/xschem/VGA/VGA.md) 
- [Filter](https://github.com/lhrodovalho/AFEBioPICO/blob/main/xschem/FILTER/FILTER.md) 
- [Pseudo-Resistor](https://github.com/lhrodovalho/AFEBioPICO/blob/main/xschem/PR/PR.md)
- [Current Reference (SBCS)](https://github.com/lhrodovalho/AFEBioPICO/blob/main/xschem/SBCS/SBCS.md)
- [Analog Mux (AMUX)](https://github.com/lhrodovalho/AFEBioPICO/blob/main/xschem/AMUX/AMUX.md)
-->

### Schematics and Layouts
#### AFE - 700 x 350 um
* All layouts use common-centroid technique
* All wires are shielded, as they are very long and parasitic capacitance between then would be significant. Provides extra protection for noise. Very large parasitic capacitors between signals and the ground plane.
* All designs were made with transistor arrays [3] of 1:8, 4:2 and 8:1 matrices. Each single PMOS single transistor is 3 X 8 um, and each single NMOS is 1 x 8 um.

![image](./layouts/afe.png)


#### Low-Noise Amplifier (LNA)
* LNA based on [1] with tunable-pseudo resistors [6].
* The LNA OTA is a simple single-stage amplifier with differential pair.and current mirror active load.
---
![image](./images/lna_sch.png)

LNA schematic

![image](./layouts/lna.png)

LNA layout

---
![image](./images/pseudo_sch.png)

Tunable pseudo-resistor [6] schematic

![image](./images/pseudo_bias.png)

Tunable pseudo-resistor biasing circuit schematic

![image](./layouts/pseudo.png)

Matched Pseudo-Resistors and biasing circuit layout

---
![image](./images/ota_sch.png)

OTA schematic


![image](./layouts/ota.png)

OTA layout

---
#### Variable Gain Amplifier (VGA)

![image](./images/vga_sch.png)

Outdated VGA schematic
* Amplifier topology with capacitve feedback with pseudo-resistors was dismissed, as distortion is too large for output signals over 100 mV, as the pseudo-resistor resistance is too non-linear and the cutoff frequencies are a function of the output signal.
* Non-inverting amplifier was choosen for better linearity, but resistive feedback requires a class AB operational amplifier which can drive the resistive load, otherwise the polysilicon resistors would be too large. A simple symmetrical OTA can drive the capacitive loads, but can't drive reasonably sized integrated resistors efficiently.

![image](./images/opamp15.gif)

VGA based on non-inverting amplifier with variable resistive feedback

![image](./images/opamp_sch.jpeg)

Class AB OPAMP schematic, based on [2]

![image](./layouts/opamp.png)

OPAMP layout

---
#### Self-Biased Current Source (SBCS)
![image](./images/irefa.png)

Self-Biased Current Source schematic

![image](./layouts/sbcs.png)

Self-Biased Current Source layout

---
### Simulation Results

* All simulated results from extracted netlists from .mag files
* Testbenches can be found in the lib/\*/ngspice folder, as simulation scripts only.
* Xschem circuits and simulations are outdated.

#### Pseudo-Resistor

![image](./lib/pseudo/plots/pseudo_tb_sweep.png)

Pseudo-resistor biased with 0.1, 1 and 10 nA
* Highly non-linear
* Biasing is necessary to calibrate pseudoresistor after process variability is considered.

#### OTA

![image](./lib/ota/plots/ota_tb_open_dc.png)

OTA in-out DC characteristic curve.
* It is a simple differential pair and has limited output voltage excursion, but it already limited by the pseudo-resistor excursion range

#### LNA

* The LNA achieves a adequate voltage gain and cutoff frequencies, but simulation with MiM capacitors models is unstable.
* The MiM LNA version OTA inputs are not converging to the virtual ground at 0.9 V (Vdd/2), so the voltage drop at the pseudoresistor is outside its proper range

![image](./lib/lna/plots/lna_tb_ac_gain_idealcap_and_mim.png)

Idead and MiM capacitor AC simulation results


![image](./lib/lna/plots/lna_idealcap.png)

Ideal capacitor transisent simulation

![image](./lib/lna/plots/lna_tb_tran_mimcap.png)

MiM capacitor transisent simulation

#### VGA - OPAMP
* VGA as non-inverting amplifier with variable resistive feedback.
* Class AB opamp based on [2], but without Rail-to-Rail Input excursion.

![image](./lib/opamp/plots/opamp_tb_open_dc.png)

Open-loop in-out DC characteristic curve
* 500 uV instrinsic voltage offset
* rail-to-rail output

![image](./lib/opamp/plots/opamp_tb_load_v.png)

Voltage follower with varying current load with input at 0.9 V and output connected to a varying current source/sink
* Can drive up to 300 uA load, both positive and negative
* Uses about 300 nA quiescent current for no load.


![image](./lib/opamp/plots/opamp_tb_inv_ac_gain.png)

Open-loop AC gain

![image](./lib/opamp/plots/opamp_tb_inv_ac_phase.png)

Open-loop AC phase

* 80 dB DC small-signal voltage gain
* 3.3 kHz GBW for 10 pF load and 10 nA biasing current
* 47° phase margin
* 300 nA quiescent current

![image](./images/opamp15.gif)

Non-Inverting amplifier used for VGA
* R1: 1 Meg, R2: 9 Meg
* R1 is should be a digitally programmable resistor for VGA application

![image](./lib/opamp/plots/opamp_tb_ninv_dc.png)

Non-inverting amplifier DC characteristic curve

![image](./lib/opamp/plots/opamp_tb_ninv_ac_gain.png)

Non-inverting amplifier AC gain

![image](./lib/opamp/plots/opamp_tb_ninv_ac_phase.png)

Non-inverting amplifier AC phase

![image](./lib/opamp/plots/opamp_tb_ninv_tran.png)

Non-inverting amplifier transient simulation results

#### SBCS

![image](./lib/sbcs/plots/sbcs_io.png)

Self-Biasing Current Source output current X VDD.

![image](./lib/sbcs/plots/sbsc_psrr.png)

Self-Biasing Current Source DC Power Supply Rejection Ratio

![image](./lib/sbcs/plots/sbcs_idd.png)

Self-Biasing Current Source total current consumption.

![image](./lib/sbcs/plots/sbcs_temp.png)

Self-Biasing Current Source temperature variability
* PTAT behaviour
* 372 nA total current
* 36 nA output current
* 1.1 V minimum power supply
* VDD stability: 2.9\%/V 
* Temp. stability: 4462 ppm/°C


### Target Performance Summary


| Specifications  | -                            |
| :---            | :---                         |
| VDD             | 1.8 V                        |
| Power           | 5 &mu;W                      |
| Input Noise     | 10 &mu;V RMS (@ 0.05-100 Hz) |
| Offset Voltage  | 1 mV                         |
| Gain            | 10-1000 V/V                  |
| Bandwidth       |	0.5-100 Hz                   |
| THD             |	0.1 % @ 1 V<sub>pp</sub>     |

Status and Issues
============

* LNA **doesn't work** with MiM capacitors. Perhaps it is a problem with the models.
* No dual MiM capacitors pass DRC.
* **Noise simulation doesn't work** with extracted netlists.
* No Monte carlo or corner simulations for extracted netlists
* Resistive feedback and switches aren't finished. VGA gain is fixed.
* No current DAC for pseudo-resistor calibration. Individual blocks will be biased externally.
* No digital control for tuning.
* Self-Biased Current Source was made with very small transistor lenghts and VDD stability is lackluster. Should be remade.
* Filter block was scraped, as cutoff frequencies are now controlled by tuning the LNA OTA and pseudoresistor.
* Top level blocks aren't routed
* Documentation is extremely incomplete and some images were sourced from outside without proper references. Images must be updated.


Team members
============


**B.Eng. Deni Germano Alves Neto (Deni)**
| [denialves77@gmail.com](mailto:denialves77@gmail.com?subject=Hi% "Hi!") <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/email.png" alt="email"> | 
[Linkedin](https://www.linkedin.com/in/deni-alves-neto) <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/linkedin.png"> |

**M.Sc. João Vitor Testi Ferreira (Testi)**
| [testiferreira.jv@gmail.com](mailto:testiferreira.jv@gmail.com?subject=Hi% "Hi!") <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/email.png" alt="email"> | 
[Linkedin](https://www.linkedin.com/in/joão-vitor-testi-ferreira-925305101) <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/linkedin.png"> |

**M.Sc. Luís Henrique Rodovalho (Rodovalho)**
| [luishenriquerodovalho@gmail.com](mailto:luishenriquerodovalho@gmail.com?subject=Hi% "Hi!") <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/email.png" alt="email"> | 
[Linkedin](https://www.linkedin.com/in/luís-henrique-rodovalho-moreira-de-lima-765a8a7a) <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/linkedin.png"> |

**M.Sc. Rafael Sanchotene Silva (Rafael)**
| [r.sanchotene@gmail.com](mailto:r.sanchotene@gmail.com?subject=Hi% "Hi!") <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/email.png" alt="email"> | 
[Linkedin](https://www.linkedin.com/in/rafael-sanchotene-silva-1a6275b4) <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/linkedin.png"> |

**M.Sc. Thiago Daros Fernandes (Thiago)**
| [daros.thiago@gmail.com](mailto:daros.thiago@gmail.com?subject=Hi% "Hi!") <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/email.png" alt="email"> | 
[Linkedin](https://www.linkedin.com/in/thiago-daros-fernandes-20a365115) <img width="15" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/linkedin.png"> |

References
==========

[1] Harrison, Reid R., et al. "A low-power integrated circuit for a wireless 100-electrode neural recording system." IEEE Journal of Solid-State Circuits 42.1 (2006): 123-133.

[2] Hogervorst, Ron, et al. "A compact power-efficient 3 V CMOS rail-to-rail input/output operational amplifier for VLSI cell libraries." IEEE journal of solid-state circuits 29.12 (1994): 1505-1513.

[3] Arnaud, Alfredo, Rafaella Fiorelli, and Carlos Galup-Montoro. "Nanowatt, sub-nS OTAs, with sub-10-mV input offset, using series-parallel current mirrors." IEEE Journal of Solid-State Circuits 41.9 (2006): 2009-2018.

[4] Krummenacher, Francois, and Norbert Joehl. "A 4-MHz CMOS continuous-time filter with on-chip automatic tuning." IEEE Journal of Solid-State Circuits 23.3 (1988): 750-758.

[5] Serra-Graells, Francisco, and Jose Luis Huertas. "Sub-1-V CMOS proportional-to-absolute temperature references." IEEE Journal of Solid-State Circuits 38.1 (2003): 84-88.

[6] Guglielmi, Emanuele, et al. "High-value tunable pseudo-resistors design." IEEE Journal of Solid-State Circuits 55.8 (2020): 2094-2105.



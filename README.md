# AFEBioPICO

![GitHub](https://img.shields.io/github/license/lhrodovalho/AFEBioPICO?style=plastic)
![GitHub repo size](https://img.shields.io/github/repo-size/lhrodovalho/AFEBioPICO?style=plastic)
![GitHub last commit](https://img.shields.io/github/last-commit/lhrodovalho/AFEBioPICO?style=plastic)
![GitHub tapeout](https://img.shields.io/date/1634326346?label=tapeout%20in&style=plastic)
<img align="right" width="200" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/images/Logo.jpg" alt="logo">

An <b>Ultra-Low-Power Analog Front-End for Bio-Signals</b> intended to be integrated for the SSCS Platform for IC Design Outreach (PICO) Open-Source Design Contest. </br>




Table of contents
==============================
<!--ts-->
  * [Summary](#Summary)
    * [Motivation](#Motivation)    
    * [Details](#Details)
  * [Description](#Description)
    * [Block Diagram](#Block-Diagram)
    * [Schematics](#Schematics)
      * [LNA](#LNA)
      * [VGA](#VGA)
      * [Filter](#Filter)
      * [Pseudo-Resistor](#Pseudo-Resistor)
      * [Current Reference](#Current-Reference)
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

In order to bias the circuit a current reference is also provided. All this process is done while consuming only 5 uW for a 1.8 V supply voltage.

### Motivation

As a consequence of the population aging, chronic diseases are becoming the significant cause of death in most countries. Unfortunately, intermittent and asymptomatic features of many chronic disorders turn the task of diagnosis into a real challenge. Due to the new trends of wearable devices for biosensing, predicting and detecting the exact moment that a chronic disease is happening became a possible solution. Hence, it can do a better and timely diagnostic. Therefore, in this project, we propose an ultra-low-power analog front-end to integrate a system for long-term monitoring. We can apply this work to several bio-signals, such as ECG, EMG, and EEG.

### Details

Category: `N/A`

Process: `sky130A`



Description
===========

The analog front-end for bio-signals main goal is to amplify its inputs, and filter interference and noise without losing resolution, so that the processed signals information can be properly extracted.


### Block Diagram

<p align="center">
  <img width="800" src="https://github.com/lhrodovalho/AFEBioPICO/blob/main/pictures/diagram_v3.png" alt="blockdiagram">
</p>

Our design is composed of four blocks. The `Low-Power Low-Noise Amplifier (LNA)` [1] simultaneously filters the input DC signal and amplifies it. Normally, electrodes output an unknown DC offset which must be canceled, otherwise it would be amplified together with the input signal and saturate the output, causing distortion.

After the first stage gain, a variable gain stage is needed, since the biomedical signals have a varying amplitude due to electrode position and the user own characteristics. This variable gain stage is implemented with a `Variable Gain Amplifier (VGA)` based on the non-inverting operational amplifier with variable resistors in its feedback loop. This operational amplifier should have a large output voltage excursion, and be capable of driving a relatively large resisitive load as efficiently as possible, so it should have a  class AB output stage [2]

Finally, the VGA output signal must be filtered to limit the noise and interference from unwanted frequencies. Since the biomedical signals usually have a very low upper cutoff frequency, the filters should be made of very low transconductance amplifiers [3] to implement very large time constants with reasonable sized integrated capacitors. Additionally, the `filter output` must be as linear as possible to minimize distortion, so its transconductors must have improved linearity [4].

All these analog circuit blocks have in common the need of a biasing current. We chose a resistorless `self-biased current reference source (SBCS)` [5], since integrated resistors exhibit a larger process variability than MOS transistors.


### Schematics

#### LNA

![image](https://user-images.githubusercontent.com/5855935/131168906-d9f4932c-202e-4b55-a1dd-8a790dc35118.png) 

Low-Power Low-Noise Amplifier (LNA) [1]

The LNA is designed with a voltage subtractor topology using capacitive impedances with a `nominal gain of 20dB`. Due to the low frequency corner specification, the output DC coupling is accomplished using `high resistance pseudo-resistors`. A symmectrical OTA is used as the transconductor element. The OTA transistors are big in order to reduce the flicker noise (1/f).

#### VGA

![image](https://user-images.githubusercontent.com/5855935/131169220-8777ed4b-ae8a-4a2d-abdf-f7bed77cc1e4.png)

VGA: Variable Gain Amplifier based on the non-inverting amplifier with variable resistors and folded cascode OTAs with class AB output stage [2] 

The VGA is designed with 2 stages and an analog mux to select a gain between 20, 40 or 60dB. The output DC coupling is also accomplished by using pseudo-resistors. The OTA used for this design is the same as the one used for the LNA, but the dimensions of the transistors were reduced, because this block is not the bottleneck of noise requirements.   

#### Filter

![image](https://user-images.githubusercontent.com/5855935/131169297-3e5da296-6070-44ba-ab23-63b7ad8618f4.png)

Filter: Very low-frequency Gm-C filter with ultra-low-transconductance amplifier [3] and active source degeneration for improved linearity [4] 

The Filter is designed with with ultra-low-transconductance amplifiers due to the low frequencies necessary to achieve the specification. It as a bandpass filter and its parameters are described below.

<img src="https://render.githubusercontent.com/render/math?math=\frac{V_{out}}{V_{in}} = A \frac{s\frac{\omega_o}{Q}}{s^{2}+s\frac{\omega_o}{Q}+\omega_{o}^{2}}">
<img src="https://render.githubusercontent.com/render/math?math=A = \frac{g_{m1}}{g_{m2}}">
<img src="https://render.githubusercontent.com/render/math?math=\omega_o = \sqrt{\frac{g_{m1}g_{m3}}{C_{1}C_{2}}}">
<img src="https://render.githubusercontent.com/render/math?math=Q = \sqrt{\frac{C_1}{C_2}}\frac{\sqrt{g_{m1}g_{m3}}}{g_{m2}}">

#### Current Reference

TBD

#### Pseudo-Resistor

TBD

### Target Performance Summary


| Specifications  | -                         |
| :---            | :---                      |
| VDD             | 1.8 V                     |
| Power           | 5 uW                    |
| Input Noise     | 10 uV RMS (@ 0.05-100 Hz) |
| Offset Voltage  | 1 mV                      |
| Gain            | 10-1000 V/V                |
| Bandwidth       |	0.5-100 Hz                |
| THD             |	0.1 % @ 1 Vpp             |

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



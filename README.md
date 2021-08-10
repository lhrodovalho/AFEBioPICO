![plot](./images/logo.png)
<h1 align="center">
 AFEBioPICO
</h1> 
<p aligh="center"><i> An Ultra-Low-Power Analog Front-End for Bio-Signals. </br></i>
 🚧 IEEE SSCS PICO 🚀 Under Construction...  🚧</p>

Table of contents
==============================
<!--ts-->
  * [Summary](#Summary)
    * [Details](#Details)
  *  [Goal](#Goal)
  * [Description](#Description)
  * [Block Diagram](#Block-Diagram)
  * [Schematics](#Schematics)
  * [Target Performance Summary](#Target-Performance-Summary)
  * [References](#References)
  * [Team Members](#Team-Members)
<!--te-->

Summary
=======

This design contains an analog signal process block that filters DC inputs, amplifies the AC components with an user selected voltage gain, and filters frequencies outside the bio-signals bandwidth, while consuming only 100 uW for a 1.8 V supply voltage.

---

Details
=======

**Category:** N/A

**Process:** sky130A

**Goal** 
=========

As a consequence of the population aging, chronic diseases are becoming the significant cause of death in most countries. Unfortunately, intermittent and asymptomatic features of many chronic disorders turn the task of diagnosis into a real challenge. Due to the new trends of wearable devices for biosensing, predicting and detecting the exact moment that chronic disease is happening became a possible solution. Hence, it can do a better and timely diagnostic. Therefore, in this project, we propose an ultra-low-power analog front-end to integrate a system for long-term monitoring. We can apply this work to several bio-signals, such as ECG, EMG, and EEG.

Description
===========

The analog front-end for bio-signals main goal is to amplify its inputs, and filter interference and noise without losing resolution, so the processed signals information can be properly extracted.

Our design is composed of four blocks. The Low-Power Low-Noise Amplifier (LNA) [1] simultaneously filters the input DC signal and amplify it. Normally, electrodes output an unknown DC offset which must be canceled, otherwise it would be amplified together with the input signal and saturate the output, causing distortion.

After the first stage gain, a variable gain stage is needed, since the biomedical signals have a varying amplitude due to electrode position and the user own characteristics. This variable gain stage is implemented with a Variable Gain Amplifier (VGA) based on the non-inverting operational amplifier with variable resistors in its feedback loop. This operational amplifier should have a large output voltage excursion, and be capable of driving a relatively large resisitive load as efficiently as possible, so it should have a  class AB output stage [2]

Finally, the VGA output signal must be filtered to limit the noise and interference from unwanted frequencies. Since the biomedical signals usually have a very low upper cutoff frequency, the filters should be made of very low transconductance amplifiers [3] to implement very large time constants with reasonable sized integrated capacitors. Additionally, the filter output must be as linear as possible to minimize distortion, so its transconductors must have improved linearity [4].

All these analog circuit blocks have in common the need of a biasing current. We chose a resistorless self-biased current reference source (SBCS) [5], since integrated resistors exhibit a larger process variability than MOS transistors.

Block Diagram
=============

![Block Diagram](https://github.com/lhrodovalho/AFEBioPICO/blob/main/pictures/diagram_v3.png)

Schematics
==========

![LNA](https://github.com/lhrodovalho/AFEBioPICO/blob/main/pictures/LNA.png)

Low-Power Low-Noise Amplifier (LNA) [1]

![VGA](https://github.com/lhrodovalho/AFEBioPICO/blob/main/pictures/vga.png)

VGA: Variable Gain Amplifier based on the non-inverting amplifier with variable resistors and folded cascode OTAs with class AB output stage [2]

![Filter](https://github.com/lhrodovalho/AFEBioPICO/blob/main/pictures/filtro.png)

Filter: Very low-frequency Gm-C filter with ultra-low-transconductance amplifier [3] and active source degeneration for improved linearity [4]

Target Performance Summary
==========================

| Specifications  | -                         |
| :---            | :---                      |
| VDD             | 1.8 V                     |
| Power           | 100 uW                    |
| Input Noise     | 10 uV RMS (@ 0.05-100 Hz) |
| Offset Voltage  | 1 mV                      |
| Gain            | 10-100 V/V                |
| Bandwidth       |	0.5-100 Hz                |
| THD             |	0.1 % @ 1 Vpp             |

References
==========

[1] Harrison, Reid R., et al. "A low-power integrated circuit for a wireless 100-electrode neural recording system." IEEE Journal of Solid-State Circuits 42.1 (2006): 123-133.

[2] Hogervorst, Ron, et al. "A compact power-efficient 3 V CMOS rail-to-rail input/output operational amplifier for VLSI cell libraries." IEEE journal of solid-state circuits 29.12 (1994): 1505-1513.

[3] Arnaud, Alfredo, Rafaella Fiorelli, and Carlos Galup-Montoro. "Nanowatt, sub-nS OTAs, with sub-10-mV input offset, using series-parallel current mirrors." IEEE Journal of Solid-State Circuits 41.9 (2006): 2009-2018.

[4] Krummenacher, Francois, and Norbert Joehl. "A 4-MHz CMOS continuous-time filter with on-chip automatic tuning." IEEE Journal of Solid-State Circuits 23.3 (1988): 750-758.

[5] Serra-Graells, Francisco, and Jose Luis Huertas. "Sub-1-V CMOS proportional-to-absolute temperature references." IEEE Journal of Solid-State Circuits 38.1 (2003): 84-88.

Team members
============

B.Eng. Deni Germano Alves Neto

M.Sc. João Vitor Testi Ferreira

M.Sc. Luís Henrique Rodovalho

M.Sc. Rafael Sanchotene Silva

M.Sc. Thiago Daros Fernandes

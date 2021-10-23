# Low-Noise Amplier - LNA

The LNA is designed with a voltage subtractor topology using capacitive impedances with a `nominal gain of 20dB`. Due to the low frequency corner specification, the output DC coupling is accomplished using `high resistance pseudo-resistors`. A symmectrical OTA is used as the transconductor element. The OTA transistors are big in order to reduce the flicker noise (1/f).

![image](https://user-images.githubusercontent.com/5855935/131168906-d9f4932c-202e-4b55-a1dd-8a790dc35118.png) 

Low-Power Low-Noise Amplifier (LNA) [1]

## Layouts
---
![image](../../layouts/lna.png)

LNA layout

---
![image](../../layouts/pseudo.png)

Matched Pseudo-Resistor layout

---
![image](../../layouts/ota.png)

OTA layout


## Simulation results

### Pseudo-Resistor

![image](../../lib/pseudo/plots/pseudo_tb_sweep.png)

Pseudo-resistor biased with 0.1, 1 and 10 nA
* Highly non-linear
* Biasing is necessary to calibrate pseudoresistor after process variability is considered.

### OTA

![image](../../lib/ota/plots/ota_tb_open_dc.png)

OTA in-out DC characteristic curve.
* It is a simple differential pair and has limited output voltage excursion, but it already limited by the pseudo-resistor excursion range

### LNA

* The LNA achieves a adequate voltage gain and cutoff frequencies, but simulation with MiM capacitors models is unstable.
* The MiM LNA version OTA inputs are not converging to the virtual ground at 0.9 V (Vdd/2), so the voltage drop at the pseudoresistor is outside its proper range

![image](../../lib/lna/plots/lna_tb_ac_gain_idealcap_and_mim.png)

Idead and MiM capacitor AC simulation results


![image](../../lib/lna/plots/lna_idealcap.png)

Ideal capacitor transisent simulation

![image](../../lib/lna/plots/lna_tb_tran_mimcap.png)

MiM capacitor transisent simulation



# FILTER

![image](https://user-images.githubusercontent.com/5855935/131169297-3e5da296-6070-44ba-ab23-63b7ad8618f4.png)

Filter: Very low-frequency Gm-C filter with ultra-low-transconductance amplifier [3] and active source degeneration for improved linearity [4] 

The Filter is designed with with ultra-low-transconductance amplifiers due to the low frequencies necessary to achieve the specification. It is a bandpass filter and its parameters are described below.

<img src="https://render.githubusercontent.com/render/math?math=\frac{V_{out}}{V_{in}} = A \frac{s\frac{\omega_o}{Q}}{s^{2}+s\frac{\omega_o}{Q}+\omega_{o}^{2}}">
<img src="https://render.githubusercontent.com/render/math?math=A = \frac{g_{m1}}{g_{m2}}">
<img src="https://render.githubusercontent.com/render/math?math=\omega_o = \sqrt{\frac{g_{m1}g_{m3}}{C_{1}C_{2}}}">
<img src="https://render.githubusercontent.com/render/math?math=Q = \sqrt{\frac{C_1}{C_2}}\frac{\sqrt{g_{m1}g_{m3}}}{g_{m2}}">

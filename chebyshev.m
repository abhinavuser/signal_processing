clear all
clc
syms s
AP=0.9;
AS=0.24;
PEF_D=0.25*pi;
SEF_D=0.5*pi;
T=1;
alpha_P=-20*log10(AP)
alpha_S=-20*log10(AS)
PEF_A=PEF_D/T
SEF_A=SEF_D/T
[N,CF]=cheb1ord(PEF_A,SEF_A,alpha_P,alpha_S,'s');
[Bn,An]=cheby1(N,alpha_P,1,'s');
display('Normalised Transfer Function is,')
Hsn=tf(Bn,An)
[B,A]=cheby1(N,alpha_P,CF,'s');
display('Unnormalised Transfer Function is,')
Hs=tf(B,A)
[num,den]=impinvar(B,A,1/T);
display('Digital Transfer Function is,')
Hz=tf(num,den,T)
w=0:pi/16:pi;
display('Frequency Response is,')
Hw=freqz(num,den,w)
display('Magnitude Response is,')
Hw_mag=abs(Hw)
plot(w/pi,Hw_mag,'k');
grid;

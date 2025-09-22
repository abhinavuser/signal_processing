clc
clear all
wc=0.5*pi;
N=25;
alpha=(N-1)/2
eps=0.001;
n=0:1:N-1;
hd=(sin(pi*(n-alpha+eps))-sin(wc*(n-alpha+eps)))./(pi*(n-alpha+eps));
wr=boxcar(N);
hn=hd.*wr';
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on
wb=blackman(N);
hn=hd.*wb';
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'-.'); grid;
xlabel('Normalized Frequency\omega\pi');
ylabel('Magnitud'); hold off

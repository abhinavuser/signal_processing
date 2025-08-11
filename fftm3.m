clc
clear all
x=input('Sequence for N pt dft=');
N=length(x)
X=zeros(N,1)
for k=0:N-1
for n=0:N-1
X(k+1)=X(k+1)+x(n+1)*exp(-j*pi*2*n*k/N)
end
end
t=0:N-1;
subplot(3,1,1);
stem(t,x);
xlabel('Time(s)');
ylabel('Amplitude');
title('Time domain-input sequence');
subplot(3,1,2);
stem(t,X);
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain-Magnitude response');
subplot(3,1,3);
stem(t,angle(X));
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain-Phase response');
X
angle(X)
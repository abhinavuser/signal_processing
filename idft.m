N=input('Enter the length of the sequence');
M=input('Enter the length of DFT=');
u=input('Enter the sequence');
U=ifft(u,M);
t=0:1:N-1;
subplot(3,1,1);
stem(t,u);
title('Original frequency domain sequence');
xlabel('Time index');
ylabel('Ampliude');
subplot(3,1,2);
k=0:1:M-1;
stem(k,abs(U))
title('Magnitude of the idft samples');
xlabel('Frequency index K');
ylabel('magnitude');
subplot(3,1,3);
stem(k,angle(U))
title('Phase of the idft samples');
xlabel('Frequency index k');
ylabel('Phase');
disp('Magnitude of IDFT');
disp(abs(U));
disp('Phase of IDFT');
disp(angle(U));
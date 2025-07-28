a=input('Enter the first sequence =');
b=input('Enter the second sequence=');
c=cconv(a,b);
R=length(a)-1;
P=length(b)-1;
M=length(c)-1;
N1=0:1:R;
N2=0:1:P;
N3=0:1:M;
disp('o/p sequence=')
disp(c);
subplot(3,1,1);
stem(N1,a)
subplot(3,1,2);
stem(N2,b)
subplot(3,1,3);
stem(N3,c);
xlabel('time index n');
ylabel('Amplitude');
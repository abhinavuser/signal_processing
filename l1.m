%unit step response
a=input("Desired length of the sequene:");
b=input("Enter the sampling frequency:");
x=0:a-1;
y=cos(2*pi*b*x);
stem(x,y);
xlabel("Time Index");
ylabel=("Amplitude");
title=("Generation of unit step sequence");


%unit ramp response
a=input("Desired length of the sequene:");
b=input("Enter the sampling frequency:");
x=0:a-1;
y=x;
stem(x,y);
xlabel("Time Index");
ylabel=("Amplitude");
title=("Generation of unit ramp sequence");


%unit impulse response
a=input("Desired length of the sequene:");
b=input("Enter the sampling frequency:");
x=0:a-1;
y=[cos(2*pi*b) zeros(1,a-1)];
stem(x,y);
xlabel("Time Index");
ylabel=("Amplitude");
title=("Generation of unit impulse sequence");

%unit exponential response
a=input("Desired length of the sequene:");
b=input("Enter the sampling:");
n=0:a-1;
x2=exp(-n);
subplot(2,2,1),stem(n,x2);
xlabel('n'), ylabel('x2(n)');
title=("Generation of unit impulse sequence");

%Sinusoidal sequence
N=50;
N=0:1:N-1;
a=input("Desired length of the sequene:");
b=input("Enter the sampling frequency:");
n=0:a-1;

x1=cos(pi*n);
subplot(3,2,1),stem(n,x1);
xlabel('n'),ylabel('x1(n)');
title("Sinusoidal sequence");

x2=cos(pi/2*n);
subplot(3,2,2),stem(n,x2);
xlabel('n'),ylabel('x2(n)');
title("Sinusoidal sequence");

x3=cos(pi/4*n);
subplot(3,2,3),stem(n,x3);
xlabel('n'),ylabel('x3(n)');
title("Sinusoidal sequence");


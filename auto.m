x=input('Enter the first sequence=');
y=xcorr(x,x);
figure
subplot(2,1,1)
stem(x)
subplot(2,1,2)
stem(fliplr(y))
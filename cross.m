x=input('Enter the first sequence=');
h=input('Enter the second sequence=');
y=xcorr(x,h);
figure
subplot(2,1,1)
stem(x)
subplot(2,1,2)
stem(fliplr(y))

%Abhinav Kumar 23BEE1128
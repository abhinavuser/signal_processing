a=input('Enter the first sequence x(n) =');
b=input('Enter the second sequence h(n)=');
n1=length(a);
n2=length(b);
N=max(n1,n2);
x=[a zeros(1,N-n1)];
for i=1:N
k=i;
for j=1:n2
H(i,j)=x(k)*b(j);
k=k-1;
if(k==0)
k=N;
end
end
end
y=zeros(1,N);
m=H';
for j=1:N
for i=1:n2
y(j)=m(i,j)+y(j)
end
end
subplot(3,1,1);
stem(a)
subplot(3,1,2);
stem(b)
subplot(3,1,3);
stem(y);
xlabel('time index n');
ylabel('Amplitude');
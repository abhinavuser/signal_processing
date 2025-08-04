% Z-transform and Inverse Z-transform of given signals 
% Z-transform and Inverse Z-transform of given signals 
clc; clear all; close all; syms n wo
% first signal
a=n+1; 
disp(‘The input equation is’) 
disp(a)
b=ztrans(a);
disp(‘The z-transform is’) 
disp(b) 
c=iztrans(b);
disp(‘The inverse z-transform is’) 
disp(c)
Output: 
The input equation is n+1
The z-transform is
z/(z - 1) + z/(z - 1)^2 
The inverse z-transform is 
n+1 


% second signal
a1=cos(wo*n);
disp(‘The input equation is’) 
disp(a1)
b1=ztrans(a1);
disp(‘The z-transform is’)
 disp(b1)
c1=iztrans(b1);
disp(‘The inverse z-transform is’) 
disp(c1) 
Output: 
The z-transform is
(z*(z - cos(wo)))/(z^2 - 2*cos(wo)*z + 1) 
The inverse z-transform is 
cos(n*acos(cos(wo))) 


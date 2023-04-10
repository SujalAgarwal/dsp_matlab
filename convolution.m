%convolution of two signals..
clear all;
close all;
clc;
n=0:1:10;
x1=[];
N=length(n);
for i=1:N
    x1(i)=sin(n(i));
end
subplot(3,1,1)
stem(n,x1);
xlabel('n');
ylabel('x(n)');
title('original signal 1 ')
h=[];
for i=1:N
    h(i)=i+1;
end
subplot(3,1,2)
stem(n,h);
xlabel('n');
ylabel('h');
title('Original singal 2')
n2=2*N-2;
%convoluted signal
y=conv(x1,h);
subplot(3,1,3)
stem(n,h);
xlabel('n');
ylabel('y');
title('Convoluted Signal')